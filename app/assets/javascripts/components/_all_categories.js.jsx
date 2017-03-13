var AllCategories = React.createClass({
  render() {
    var categories = this.props.categories.map((category) => {
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
