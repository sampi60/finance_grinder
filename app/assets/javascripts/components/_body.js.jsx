var Body = React.createClass({
  getInitialState() {
    return { categories: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/categories.json', (response) => { this.setState({ categories: response }) });
  },

  handleSubmit(item) {
    var newState = this.state.categories.concat(item);
    this.setState({ categories: newState })
  },

  render() {
    return (
      <div>
        <NewCategory handleSubmit={this.handleSubmit}/>
        <AllCategories categories={this.state.categories} />
      </div>
    )
  }
})
