<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run Linters](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [ImproveLife] <a name="about-project"></a>

> The ImproveLife app helps you manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

**[ImproveLife]** is a ruby on rails mobile website.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> ImproveLife is backend project

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> In this app you can do the following things:

- register and log in, so that the data is private to them.
- introduce new transactions associated with a category.
- see the money spent on each category.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [ImproveLife]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine
- Enter project directory

### Development Database

```sh
# Create user
sudo -u postgres createuser -e ced00 -s
# Load the schema
rails db:schema:load
# Create the database
rake db:create
# Run database Migration
rails db:migrate
```

### Install

```sh
bundle install
```

### Run server

```sh
rails s
```

### Test

```sh
rspec
```

## Author

👤 **Sammuel LEKPOR**

- GitHub: [@gSamuellekpor](https://github.com/Samuellekpor)
- Twitter: [@samuel_lekpor](https://twitter.com/samuel_lekpor)
- LinkedIn: [sammuel_kepor](https://linkedin.com/in/sammuel-lekpor)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Design inspired by [Gregoire Vella](https://www.behance.net/gregoirevella)

## 📝 License

This project is [MIT](./MIT.md) licensed.