# jekyll-theme-image-grid

A simple responsive image grid theme for displaying image-based content with various built-in customization options.

- [Live example site](http://www.jzhong.today/image-grid-example/)
- [Example site repository](https://github.com/jirrian/image-grid-example)
- [In-depth installation tutorial](https://pages.virtualgoodsdealer.com/articles/2021/01/21/simple-website-tutorial-part-three/)

![Example Screenshot](screenshot.png)

## Dependencies

This theme uses the jekyll plugin [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag).

This theme also uses [Bootstrap 4](https://getbootstrap.com/docs/4.6/getting-started/introduction/). Edit the files `_includes/bootstrap-scripts.html` and `_includes/bootstrap-style.html` to change the Bootstrap version.

## Installation

### Github Pages remote theme method

[Create a new Jekyll site.](https://jekyllrb.com/docs/#instructions)

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "github-pages", group: :jekyll_plugins
```
And then execute:

    $ bundle install

To use this theme with Github Pages, add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: jirrian/jekyll-theme-image-grid@main
```

Then build your site:

    $ bundle exec jekyll serve

Preview your new site at `http://localhost:4000`. Now you should be able to test your site locally as well as deploy it on Github Pages.

### Ruby gem installation method

[Create a new Jekyll site.](https://jekyllrb.com/docs/#instructions)

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-image-grid"
```
And then execute:

    $ bundle install

Add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-image-grid
```

Then build your site:

    $ bundle exec jekyll serve

Preview your new site at `http://localhost:4000`. Now you should be able to test your site locally.

## Usage
### First time setup

Copy the contents of the [sample `_config.yml` file](https://github.com/jirrian/image-grid-example/blob/main/_config.yml) into your `_config.yml` file and edit the values with your information and preferred settings.

Delete the contents of the `_posts` folder.

Create a folder named `_images` in the root of your site directory. Make sure the `_images` folder is included in `_config.yml`.

Check out the [example site repo](https://github.com/jirrian/image-grid-example) for reference.

### Display Settings

Edit settings in the `_config.yml` file to change display settings for the grid and post pages. See the [sample `_config.yml` file](https://github.com/jirrian/image-grid-example/blob/main/_config.yml) for reference.

#### Grid Page Display Settings

Choose whether to show all images from posts on home grid page or only show the first image from posts by editing the following field.
```yaml
grid_settings:
  show_all_images: true
```   
true - Displays all images in grid page.   
false - Only show first image of post in grid page. Images in a post are displayed sorted by their filename.

Choose the way images are displayed in the grid page by editing the following field.
```yaml
grid_settings:
    display: square-cropped
```   
square-cropped - Images are displayed in square grid and cropped to a square aspect ratio.   
square-og - Images are displayed in square grid and with original aspect ratios.   
masonry - Images are displayed in original aspect ratios but staggered (like Pinterest). Please note this will display the images in top to bottom (then left to right) order instead of left to right (then top to bottom).

#### Post Page Display Settings

Change settings for what information is displayed on post pages.

Edit the following field to display or hide post titles on the post page. The title is from the post markdown file name or the title variable in front matter of the post markdown file.
```yaml
post_settings:
  show_title: true
```   
true - Displays title of post.
false - Does not display title of post.   
This setting can be overwritten in the frontmatter of individual post files with the show_title variable like below.
```
---
layout: post
title:
show_title: false
---
```

Edit the following field to display or hide post dates on the post page. The date is from post markdown file name.
```yaml
post_settings:
  show_date: true
```   
true - Displays date of post.   
false - Does not show date of post.

### Adding a New Post

Posts in this theme are image based. A post must have at least one corresponding image for it to show on the home grid page.

All post markdown files are stored in the `_posts` folder.
All images are stored in folders in the `_images` folder. Post images are stored in folders `_images/yyyy-mm-dd-name-of-post` that correspond to the name of the post `yyyy-mm-dd-name-of-post.md`. For example, if your post markdown file is named `2020-12-26-hello-world.md`, it must be in the `_posts` folder. And, all images that are displayed in that post must be in a folder `2020-12-26-hello-world` that is inside the `_images` folder.

Post markdown files can contain the following:
```
---
layout: post
title: Title of Post (optional)
show_title: true (optional)
---

Post content here. (optional)
```

### Adding a Page

Pages are linked in the top nav bar. Markdown files for pages are stored in the root of the repository. Page markdown files can contain the following:
```
---
layout: page
title: About
---

Add your about me here. (optional)
```

## Customization
Customize the layout HTML, includes HTML, and sass files, by copying the theme files to your site directory and making edits to it there.

### Theme files structure
- `_layouts` - folder of layouts
	- `default.html` - default layout
	- `home.html` - grid page layout
	- `page.html` - page layout
	- `post.html` - post layout
- `_includes` - folder of html code used in other layouts
	- `bootstrap-scripts.html` - Bootstrap 4 scripts (edit to change version of Bootstrap)
	- `bootstrap-style.html` - Bootstrap 4 stylesheet (edit to change version of Bootstrap)
	- `footer.html` - footer
	- `head.html` - head tag
	- `header.html` - navigation bar
- `_sass` - folder of scss files
	- `style.scss` - styles for theme

### Built in customization

The following variables can be edited in the `_sass/style.scss` file to change colors of the website's design.
```sass
$body-bg-color: white;		/* background color */
$header-title-color: blue;	/* color of title of website */
$header-bg-color: white;	/* color of nav bar */
$footer-color: silver;		/* color of footer icons */
$post-title-color: gray;	/* color of post titles */
$post-date-color: darkgray;	/* color of post dates */
$page-title-color: gray;	/* color of page titles */
```

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Future updates

- lazy loading
- video post support
- text post support