var AllCategories = React.createClass({
  getInitialState() {
    return { categories: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/categories.json', (response) => { this.setState({ categories: response }) });
  },

  render() {
    var categories = this.state.categories.map((category) => {
      return (
        <div key={category.id}>
          <h3>{category.name}</h3>
          <p>{category.kind}</p>
        </div>
      )
    });

    return (
      <div>
        {categories}
      </div>
    )
  }
})
