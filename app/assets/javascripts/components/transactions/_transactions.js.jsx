var Transactions = React.createClass({
  getInitialState() {
    return { transactions: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/transactions.json', (response) => { this.setState({ transactions: response }) });
    $(document).ready(function() {
      $(".button-collapse").sideNav();
      $('select').material_select();
      $('ul.tabs').tabs();
    });
  },

  render() {
    return (
      <div>
        <h5>Transactions</h5>
        <AllTransactions transactions={this.state.transactions} />
      </div>
    )
  }
})
