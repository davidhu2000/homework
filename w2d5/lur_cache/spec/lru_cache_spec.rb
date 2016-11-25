require 'rspec'
require 'lru_cache'

describe LRUCache do
  subject(:lru) { LRUCache.new(5) }

  describe '#initialize' do

    it 'should initialize with cache size' do
      expect(lru.size).to eq(5)
    end

    it 'should initialize cache as empty array' do
      expect(lru.cache).to be_an(Array)
      expect(lru.cache).to be_empty
    end
  end

  describe '#add' do
    it 'should add an object to cache' do
      expect(lru.cache).to be_empty
      lru.add('hi')
      expect(lru.cache).to include('hi')
      expect(lru.cache.length).to eq(1)
    end

    it 'should remove oldest object if cache is full' do
      (1..5).each do |x|
        lru.add(x)
      end
      expect(lru.cache.length).to eq(5)

      lru.add(6)
      expect(lru.cache).to include(6)
      expect(lru.cache).to_not include(1)
      expect(lru.cache.length).to eq(5)
    end

    it 'should not add object to cache if already in cache' do
      lru.add(1)
      lru.add(1)
      expect(lru.cache.length).to eq(1)
    end

    it 'should move object to end of cache if added again' do
      lru.add(1)
      lru.add(2)
      lru.add(3)
      expect(lru.cache.first).to eq(1)
      lru.add(1)
      expect(lru.cache.first).to_not eq(1)
      expect(lru.cache.last).to eq(1)
    end
  end

  describe '#count' do
    it 'should count the number of objects in cache' do
      lru.add(1)
      lru.add(2)
      expect(lru.cache.length).to eq(2)
    end
  end

  describe '#show' do
    it 'should return a list of cache' do

      lru.add(1)
      lru.add(2)
      expect { lru.show }.to output("[1, 2]\n").to_stdout
    end
  end

end
