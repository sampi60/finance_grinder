var AllTransactions = React.createClass({
  render() {
    var transactions = this.props.transactions.map((transaction) => {
      return ( <tr key={transaction.id}><td>{transaction.date}</td><td>{transaction.amount}</td></tr> )
    });

    return (
      <div>
        <table className='highlight'>
          <thead>
            <tr>
              <th>Date</th>
              <th>Amount</th>
            </tr>
          </thead>
          <tbody>
            {transactions}
          </tbody>
          </table>
      </div>
    )
  }
})
