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
      $('.datepicker').pickadate({
        selectMonths: true,
        selectYears: 15
      });
    });
  },

  handleSubmit(transaction) {
    var newState = this.state.transactions.concat(transaction);
    this.setState({ transactions: newState })
  },

  render() {
    return (
      <div>
        <h5>Transactions</h5>
        <NewTransaction handleSubmit={this.handleSubmit}/>
        <AllTransactions transactions={this.state.transactions} />
      </div>
    )
  }
})
