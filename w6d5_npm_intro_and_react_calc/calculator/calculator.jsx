import React from 'react';

class Calculator extends React.Component {
  constructor() {
    super();
    this.state = { num1: '', num2: '', result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
    this.add = this.add.bind(this);
    this.substract = this.subtract.bind(this);
    this.divide = this.divide.bind(this);
  }

  setNum1 (event) {
    const num1 = event.target.value ? parseInt(event.target.value) : '';
    this.setState({ num1 });
  }

  setNum2 (event) {
    const num2 = event.target.value ? parseInt(event.target.value) : '';
    this.setState({ num2 });
  }

  clear (event) {
    event.preventDefault();
    this.setState({ num1: '', num2: '', result: 0 });
  }

  add (event) {
    event.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract (event) {
    event.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply (event) {
    event.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide (event) {
    event.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  render() {
    return (
      <div>
        <h3>{this.state.result}</h3>
        <br />
        <input onChange={this.setNum1} value={this.state.num1} />
        <input onChange={this.setNum2} value={this.state.num2} />
        <button onClick={this.clear}>Clear</button>
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
