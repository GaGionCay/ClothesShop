USE master
go
CREATe database [WEBKINHDOANHQUANAO]
go
USE [WEBKINHDOANHQUANAO]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentDate] [datetime] NULL,
	[RepplyCommentId] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OrderId] [int] NULL,
	[Rating] [int] NULL,
	[FeedbackContent] [nvarchar](max) NULL,
	[FeedbackDate] [datetime] NULL,
	[ReplyFeedbackId] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackId] [int] NULL,
	[ImageURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[OrderDate] [datetime] NULL,
	[VoucherId] [int] NULL,
	[TotalAmountBefore] [decimal](38, 0) NULL,
	[DiscountAmount] [decimal](38, 0) NULL,
	[TotalAmountAfter] [decimal](38, 0) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[EndDate] [datetime] NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](38, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CategoryId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortContent] [nvarchar](max) NULL,
	[FullContent] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](max) NULL,
	[PublishDate] [datetime] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[Price] [decimal](38, 0) NULL,
	[Quantity] [int] NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[RoleId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/27/2024 6:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[DiscountPercent] [int] NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MinValue] [decimal](38, 0) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name]) VALUES (1, N'Gucci')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (2, N'Louis Vuitton')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (10, N'Chanel')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (11, N'Dior')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (12, N'Versace')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (13, N'Burberry')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Shirts')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Pants')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Jackets')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Dresses')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Shorts')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Sweaters')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (5, 1, 5, N'Burberry Blazer: A Timeless Essential for Modern Elegance', N'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.', N'When it comes to luxury fashion, few brands exude the same level of prestige and timeless appeal as Burberry. Known for its iconic trench coats and classic British aesthetic, Burberry''s range of blazers stands out as a must-have for anyone looking to add a touch of sophistication to their wardrobe. A Burberry blazer is not just a piece of clothing—it''s an investment in style, craftsmanship, and versatility that can elevate any outfit, from casual to formal.
Classic British Heritage
The Burberry blazer represents a fusion of British heritage and modern tailoring. Known for its structured cuts and sharp lines, Burberry blazers offer a perfect balance between classic and contemporary fashion. The brand’s commitment to its roots is often reflected in subtle design elements such as the iconic Burberry check lining or carefully crafted accents that nod to its storied past.
Whether you''re dressing for a formal event or adding a polished touch to a casual outfit, the refined elegance of a Burberry blazer ensures you always look effortlessly chic.
Impeccable Craftsmanship
Burberry is synonymous with quality, and its blazers are no exception. Each Burberry blazer is crafted with meticulous attention to detail, using premium fabrics like wool, cotton, and cashmere. This ensures that the blazers not only look luxurious but feel comfortable to wear. The structured design helps create a flattering silhouette, while details such as precisely stitched seams, high-quality buttons, and well-finished lapels reflect the brand’s dedication to impeccable craftsmanship.
With proper care, a Burberry blazer can be a long-term investment that remains in perfect condition, offering durability without compromising style.
Versatility for Any Occasion
One of the key features of a Burberry blazer is its versatility. It can seamlessly transition from day to night, from casual to formal settings, making it an incredibly practical piece to own. Pair it with tailored trousers and a crisp button-up shirt for a polished office look, or throw it over jeans and a t-shirt for an elevated casual ensemble.
For women, a Burberry blazer can be worn over a dress or paired with a blouse and skirt, creating a professional yet stylish outfit. Men can easily layer it with sweaters or turtlenecks for a sophisticated fall or winter look. The timeless design of Burberry blazers means they can be styled in countless ways, offering endless possibilities for any wardrobe.
Tailored to Perfection
Burberry blazers are known for their tailored fit, which flatters various body types while ensuring comfort. The brand offers a range of styles, from slim-fit blazers that provide a more modern and sleek look to classic-fit designs for those who prefer a more traditional and relaxed silhouette.
The fit is always refined, allowing the wearer to move comfortably without feeling restricted. This attention to tailoring is one of the reasons why a Burberry blazer remains a wardrobe staple for those who value both style and comfort.
Signature Details
What makes a Burberry blazer instantly recognizable is its subtle yet distinctive design elements. Many blazers feature Burberry’s signature check lining, which adds a touch of heritage and luxury without overpowering the overall look. Other details, like finely crafted lapels, high-quality buttons, and precise stitching, all contribute to the brand''s iconic status.
These signature details make Burberry blazers stand out from the rest, ensuring that even the simplest outfit gets an instant upgrade when paired with one.
Sustainability and Ethical Fashion
As one of the leading luxury fashion brands, Burberry is also committed to sustainability and ethical fashion practices. The brand has made significant strides in ensuring that its manufacturing processes are environmentally conscious, using responsibly sourced materials and promoting the use of eco-friendly practices throughout its supply chain.
By investing in a Burberry blazer, you’re not only purchasing a high-quality, stylish piece but also supporting a brand that values sustainability and ethical production. This aligns with the growing demand for luxury fashion that is mindful of its environmental impact, making a Burberry blazer an even more attractive choice for modern consumers.
Celebrities and Fashion Icons
Burberry blazers are a favorite among celebrities and fashion icons. From Emma Watson to Tom Hiddleston, many well-known figures have been spotted wearing Burberry blazers at red carpet events, photoshoots, and casual outings. Their ability to blend luxury with everyday style makes Burberry a go-to brand for those looking to maintain a polished appearance in any situation.
Conclusion
A Burberry blazer is the ultimate wardrobe essential, combining timeless elegance with modern tailoring and versatile design. With impeccable craftsmanship, premium materials, and signature details that honor Burberry''s rich heritage, these blazers are an investment in both style and substance. Whether you''re dressing for work, an evening event, or a casual outing, a Burberry blazer offers the perfect finishing touch, ensuring you always exude sophistication and class.



', N'img/product/Burberry-Blazer.png', CAST(N'2024-10-15T10:30:00.000' AS DateTime))
INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (6, 1, 4, N'Louis Vuitton Jeans: The Perfect Fusion of Luxury and Everyday Style', N'Louis Vuitton jeans combine luxury and craftsmanship with everyday style. Featuring premium denim, iconic branding, and versatile designs, they offer both comfort and sophistication. Perfect for casual and formal settings, they''re a timeless fashion investment.', N'When it comes to high-end fashion, Louis Vuitton is a name that instantly evokes thoughts of luxury, craftsmanship, and timeless style. While the brand is globally renowned for its iconic bags and accessories, Louis Vuitton has also made waves in the world of designer jeans. Combining the brand’s signature elegance with the comfort and versatility of denim, Louis Vuitton jeans are a must-have for anyone seeking to elevate their casual wardrobe with a touch of luxury.
Craftsmanship Meets Denim
Louis Vuitton is known for its attention to detail and high-quality craftsmanship, and its jeans are no exception. Made from premium denim, Louis Vuitton jeans offer a luxurious feel and a perfect fit. Each pair is meticulously crafted to ensure durability, comfort, and style, making them a standout in the world of designer jeans.
Whether you''re opting for a classic, straight-leg cut or a more contemporary, relaxed fit, you can expect superb tailoring and precise stitching that reflects Louis Vuitton''s heritage of excellence. The quality of the fabric ensures that the jeans retain their shape and structure over time, offering lasting comfort and style.
 Iconic Louis Vuitton Details
What sets Louis Vuitton jeans apart from standard denim is the brand’s incorporation of its iconic motifs and branding into the design. Whether it’s the subtle LV monogram embroidered on the back pocket, a leather patch with the Louis Vuitton logo, or unique hardware like branded buttons and zippers, these details give the jeans a luxurious and distinctive look.
Louis Vuitton often incorporates signature elements like the Damier or Monogram patterns into their jeans, either in a subtle embossed design or as a bold statement piece. These details not only reflect the brand’s luxury identity but also make the jeans instantly recognizable as part of the Louis Vuitton collection.
Versatility for Every Occasion
Louis Vuitton jeans are not just about luxury—they’re incredibly versatile too. Whether you’re dressing up for a dinner or keeping it casual for a weekend outing, these jeans can easily be styled to suit a variety of occasions. Pair them with a Louis Vuitton t-shirt and sneakers for a relaxed, off-duty look, or elevate them with a blazer and heels for a more polished appearance.
The neutral color palette often associated with Louis Vuitton jeans—ranging from classic indigo to black and white—ensures they can be paired with almost anything in your wardrobe. This versatility makes Louis Vuitton jeans a smart investment for those who value both luxury and practicality in their everyday outfits.
 Denim for the Fashion-Forward
For those looking to make a bold fashion statement, Louis Vuitton offers jeans that go beyond the basics. From patchwork designs featuring different textures of denim to embellishments such as chains or embroidered logos, the brand consistently pushes the boundaries of traditional denim wear. These fashion-forward designs are perfect for those who want to stand out while still maintaining an air of sophistication.
Louis Vuitton’s ability to mix luxury with street style has made their jeans popular among fashion influencers and celebrities alike. Wearing Louis Vuitton denim not only speaks to your personal style but also aligns you with the cutting-edge of high fashion.
Sustainability and Ethical Fashion
As luxury brands become more conscious of their environmental impact, Louis Vuitton has made strides toward sustainability in its production processes. Investing in a pair of Louis Vuitton jeans means supporting a brand that prioritizes ethical sourcing of materials and environmentally responsible manufacturing. This makes Louis Vuitton denim not only a statement of style but also a thoughtful choice for consumers who value sustainability in fashion.
Celebrities and Louis Vuitton Jeans
Louis Vuitton jeans have been spotted on celebrities and fashion icons across the globe. From Kanye West to Hailey Bieber, stars have embraced Louis Vuitton’s unique take on denim, showcasing how these jeans can be both casual and high-fashion. The brand’s ability to merge luxury with everyday wear has made Louis Vuitton jeans a go-to for those who want to blend comfort with glamour.
Conclusion
Louis Vuitton jeans offer the perfect blend of luxury, craftsmanship, and versatility. With iconic branding, high-quality materials, and both classic and fashion-forward designs, Louis Vuitton jeans are a wardrobe staple for anyone looking to elevate their casual style. Whether dressed up or down, these jeans bring a touch of elegance to any outfit, making them a timeless investment in both fashion and comfort.


', N'img/product/Louis-Vuitton-Jeans.png', CAST(N'2024-11-02T14:45:00.000' AS DateTime))
INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (7, 1, 5, N'Burberry Vest: A Timeless Layer of Style and Functionality', N'The Burberry vest combines luxury, versatility, and craftsmanship. Made from high-quality materials with iconic detailing, it’s perfect for layering in transitional seasons. Tailored for style and comfort, it''s a timeless, practical investment for any wardrobe.', N'The Versatility of the Burberry Vest
One of the key reasons to invest in a Burberry vest is its incredible versatility. Whether it''s layered over a shirt for a more polished look or paired with a casual t-shirt for a laid-back vibe, the Burberry vest can seamlessly adapt to different styles and occasions.
For men, a quilted Burberry vest can be worn with jeans for a casual weekend outfit or layered over a button-down shirt and trousers for a more refined look. Women can pair a Burberry puffer vest with a sleek blouse or a lightweight sweater for a chic, autumn-ready ensemble. Regardless of the season, a Burberry vest adds a stylish yet practical layer to any outfit.
High-Quality Materials
Burberry is synonymous with luxury craftsmanship, and its vests are no exception. From quilted down vests perfect for cooler weather to lighter gilets ideal for transitional seasons, Burberry uses only the highest quality materials in its designs. The brand often incorporates technical fabrics for added durability and functionality, ensuring that their vests not only look great but also provide comfort and protection.
Burberry vests are typically made from water-resistant fabrics, making them ideal for unpredictable weather. The blend of luxury and practicality ensures that you can stay stylish while braving the elements.
Iconic Burberry Detailing
What sets the Burberry vest apart from other outerwear is the incorporation of iconic details that have become synonymous with the brand. From the famous Burberry check pattern featured on linings or subtle accents, to the polished Burberry logo on zippers and buttons, these signature elements elevate the vest beyond simple functionality.
These small but distinctive touches give the Burberry vest its luxurious edge, making it easily recognizable as part of the Burberry heritage. These classic details ensure that your vest never goes out of style, adding timeless elegance to your wardrobe.
Tailored for Comfort and Style
One of the standout features of a Burberry vest is its tailored fit. While the vest serves a practical purpose as a layering piece, Burberry’s emphasis on structured design ensures that it enhances your silhouette rather than overpowering it. The brand’s expertise in tailoring is evident in the vest’s slim, flattering cuts, which make it suitable for both casual and more formal settings.
For men, the tailored fit of a Burberry quilted vest adds a sleek, masculine touch to any outfit, while women’s vests often include cinched waists or streamlined cuts that create a feminine silhouette. This attention to detail ensures that you not only stay warm but look stylish while doing so.
 Perfect for Transitional Seasons
The Burberry vest is an essential piece for transitional seasons like spring and fall. During these months, a full jacket can feel too heavy, but a vest offers just the right amount of warmth without compromising on style. The lightweight nature of some Burberry vests, especially their gilets, makes them ideal for layering when you need extra warmth without the bulk.
For added versatility, many Burberry vests come with removable hoods or other adjustable features, allowing you to customize the piece depending on the weather or your look. Whether you''re heading out for a brisk morning walk or transitioning from a day at work to a night out, a Burberry vest is the perfect in-between layer.
Sustainability and Ethical Fashion
Burberry has made significant strides toward sustainable fashion, and this commitment is reflected in their outerwear, including vests. By using responsibly sourced materials and prioritizing sustainable production processes, Burberry is focused on reducing its environmental impact. Investing in a Burberry vest means not only adding a luxury piece to your wardrobe but also supporting a brand that values ethical fashion practices.
Celebrity Favorites and Style Icons
Burberry vests have become a favorite among celebrities and fashion icons alike. From supermodel Cara Delevingne to actor Eddie Redmayne, many have been spotted wearing Burberry vests on the streets and at high-profile events. The brand’s ability to merge classic elegance with modern trends makes its vests popular among style-conscious individuals who want to stay on the cutting edge of fashion without sacrificing timeless sophistication.
Conclusion
A Burberry vest is more than just a functional layering piece; it’s a statement of luxury, craftsmanship, and versatility. With high-quality materials, iconic detailing, and tailored designs, a Burberry vest can elevate any outfit, whether you''re dressing for a casual day out or layering up for a night on the town. Perfect for transitional weather and adaptable to various styles, a Burberry vest is a timeless investment that brings both fashion and functionality to your wardrobe.', N'img/product/Burberry-Vest.png', CAST(N'2024-11-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (8, 1, 6, N'Chanel Pleated Skirt: A Timeless Piece of Elegance', N'A Chanel pleated skirt combines timeless elegance with versatile styling. Crafted from luxurious fabrics with signature details, it offers both sophistication and comfort. Perfect for any occasion, it''s a durable, sustainable investment in high-fashion.', N'When it comes to classic fashion, few brands hold the iconic status of Chanel. Known for their dedication to timeless elegance and impeccable craftsmanship, Chanel has always been a leader in creating clothing that transcends trends. One piece that perfectly captures the essence of this luxury brand is the Chanel pleated skirt. Effortlessly chic and universally flattering, a Chanel pleated skirt is a must-have for anyone looking to elevate their wardrobe with a touch of sophistication.
The Timeless Appeal of Pleats
The pleated skirt is a fashion staple that has been worn by women for generations, but Chanel adds a unique twist to this classic piece. The beauty of pleats lies in their structured yet flowing design, which allows for ease of movement while maintaining a polished look. Chanel takes this concept to the next level by offering pleated skirts in luxurious fabrics such as tweed, silk, and wool, making them perfect for any season or occasion.
The brand''s pleated skirts often feature precise, clean lines, giving them an air of refinement that sets them apart from more casual alternatives. Whether you''re heading to the office or a formal event, a Chanel pleated skirt effortlessly combines comfort with elegance, making it an essential piece for a sophisticated wardrobe.
Versatility in Styling
One of the greatest advantages of owning a Chanel pleated skirt is its versatility. It can be dressed up or down depending on the occasion, making it a truly adaptable piece for any fashion lover. For a formal look, pair a Chanel pleated skirt with a structured blazer and heels for a powerful yet feminine silhouette. Add a silk blouse or button-down shirt for a sophisticated office-ready ensemble.
For a more casual approach, the same skirt can be styled with a simple turtleneck, sneakers, and a crossbody bag for a chic, everyday look. The fluidity and movement of the pleats also make this skirt perfect for transitional weather—pair it with tights and boots during colder months, or opt for bare legs and sandals in the spring and summer.
Signature Chanel Details
What makes a Chanel pleated skirt truly special are the brand''s signature touches. Often, you''ll find subtle nods to Chanel''s iconic heritage in the form of Chanel buttons, tweed accents, or the classic black-and-white palette. Some skirts may even feature the famous Chanel logo subtly integrated into the fabric or hemline, offering a luxurious yet understated detail that elevates the overall look.
These small, intricate design choices add a level of sophistication that is synonymous with the Chanel brand. The quality of craftsmanship is evident in every stitch, and these details help make a Chanel pleated skirt not just a piece of clothing, but a work of art.
Luxury Fabrics and Craftsmanship
Chanel is renowned for using only the finest fabrics and materials, and their pleated skirts are no exception. Whether it’s soft cashmere blends for winter, silk for summer, or the brand’s iconic tweed for year-round wear, the quality of the fabric adds to the luxurious feel of the skirt. The pleats are perfectly structured to hold their shape over time, which speaks to the exceptional level of craftsmanship involved in creating each piece.
This dedication to quality ensures that a Chanel pleated skirt is not only stylish but also durable, meaning you can wear it season after season without it losing its charm or elegance.
A Sustainable Fashion Choice
In today’s fashion landscape, many are prioritizing sustainability, and Chanel’s pleated skirts are a great example of slow fashion. By investing in timeless, high-quality pieces like a Chanel pleated skirt, you''re contributing to a more sustainable wardrobe. Instead of following fleeting trends, Chanel’s pleated skirts are designed to last and remain stylish for years.
Their timeless appeal ensures that they won’t go out of fashion anytime soon, making them a great investment piece that can be worn for countless occasions over the years. This is especially important as the fashion industry continues to embrace sustainability and encourages consumers to buy less, but buy better.
Favored by Celebrities and Fashion Icons
Chanel pleated skirts have been spotted on countless celebrities and fashion icons, both on and off the runway. Figures like Kendall Jenner, Margot Robbie, and Keira Knightley have all been seen wearing Chanel pleated skirts, showing their versatility and universal appeal. The combination of high fashion and everyday wearability is what makes this piece a favorite among the fashion elite.
Wearing a Chanel pleated skirt offers the opportunity to channel the effortless elegance of some of the world’s most stylish women, all while staying true to your own personal style.
Conclusion
The Chanel pleated skirt is a timeless piece that embodies the brand’s commitment to luxury, style, and craftsmanship. With its versatility, impeccable detailing, and use of high-quality fabrics, this skirt is an investment that will elevate any wardrobe. Whether paired with a casual t-shirt or dressed up for an evening event, a Chanel pleated skirt brings a touch of French elegance to any outfit, making it a must-have for anyone who values classic, sophisticated fashion.


', N'img/product/Chanel-Pleated-Skirt.png', CAST(N'2024-11-14T14:22:33.660' AS DateTime))
INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (9, 1, 8, N'Burberry Sweater: The Ultimate Blend of Luxury and Comfort', N'A Burberry sweater combines timeless design, premium materials, and versatile style, making it a luxurious wardrobe staple. Known for high-quality craftsmanship, subtle details, and sustainability, these sweaters offer both comfort and sophistication for any occasion.', N'Timeless Design
Burberry sweaters are renowned for their classic and timeless designs. Whether it’s a crewneck, turtleneck, or cardigan, Burberry’s aesthetic remains consistent—understated yet luxurious. Many of the brand’s sweaters feature subtle details like the iconic Burberry check pattern, either on the cuffs, hem, or as an accent on the inside, offering a quiet nod to the brand’s heritage.
With Burberry, you can expect clean lines, neutral tones, and occasionally playful patterns that still maintain a sophisticated edge. These designs are versatile enough to be worn in both casual and semi-formal settings, making a Burberry sweater an essential addition to any wardrobe.
High-Quality Materials
What truly sets a Burberry sweater apart is its use of premium materials. Crafted from the finest fabrics such as cashmere, wool, and cotton blends, Burberry ensures that each sweater not only looks luxurious but feels incredibly comfortable to wear. The soft touch of cashmere or the warmth of high-quality wool makes Burberry sweaters perfect for chilly days, offering a cozy yet stylish solution to winter fashion.
In addition to being comfortable, these materials are chosen for their durability, ensuring that your sweater will look as good as new season after season. With proper care, a Burberry sweater can be a lasting investment that elevates your wardrobe for years to come.
 Versatility for Every Occasion
A Burberry sweater is the epitome of versatile fashion. Whether you''re dressing up for a meeting or dressing down for a casual weekend outing, a Burberry sweater can easily be styled to suit any occasion. Pair a cashmere crewneck sweater with tailored trousers and loafers for a polished office look, or wear a chunky knit with jeans and sneakers for a relaxed, casual vibe.
The neutral color palette often associated with Burberry sweaters—think beige, gray, navy, and black—makes them easy to pair with almost anything in your closet. However, if you prefer a bolder look, Burberry also offers sweaters in vibrant colors and patterns, ensuring there’s a style for everyone.
Heritage Meets Modern Style
Burberry has a long-standing history of creating luxurious garments, and their sweaters are no exception. Rooted in British tradition, the brand combines its rich heritage with modern design elements to create pieces that feel both classic and contemporary. The iconic Burberry check pattern, which has become synonymous with the brand, is often integrated into their sweaters in creative and subtle ways, making them instantly recognizable without being overly flashy.
Burberry’s ability to blend tradition with innovation means that their sweaters can appeal to a wide range of fashion tastes—from those who appreciate timeless elegance to those who want a modern twist on classic style.
Sustainable Luxury
In recent years, Burberry has made significant strides in promoting sustainability within the luxury fashion industry. The brand is committed to using responsibly sourced materials and minimizing its environmental impact. Investing in a Burberry sweater not only means you’re buying a high-quality piece but also supporting a brand that prioritizes sustainability and ethical fashion practices.
The durability of Burberry sweaters also aligns with the idea of slow fashion—pieces that are designed to last for years, reducing the need for constant replacement and supporting a more mindful approach to consumption.
Celebrities and Fashion Icons
Burberry sweaters have long been favored by celebrities and fashion icons alike. Stars such as Emma Watson, Eddie Redmayne, and Victoria Beckham have been spotted sporting Burberry knitwear, showcasing its universal appeal across different style preferences. Whether on the streets of London, New York, or Paris, a Burberry sweater is a staple for anyone looking to combine luxury with everyday wear.
Conclusion
A Burberry sweater is the perfect fusion of luxury, comfort, and versatility. With timeless designs, high-quality materials, and a heritage that continues to influence modern fashion, a Burberry sweater is more than just a piece of clothing—it''s an investment in style and sophistication. Whether you''re dressing up for an event or keeping it casual, Burberry offers a range of sweaters that suit every occasion, making it an essential addition to any fashion-conscious wardrobe.
', N'img/product/Burberry-Sweater.png', CAST(N'2024-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Post] ([Id], [UserId], [CategoryId], [Title], [ShortContent], [FullContent], [Thumbnail], [PublishDate]) VALUES (10, 1, 6, N'Chanel Summer Dress: Timeless Elegance for the Warm Season', N'Chanel summer dresses offer a perfect balance of timeless elegance and modern sophistication. Crafted with premium materials and meticulous attention to detail, these versatile designs are ideal for various occasions, embodying luxury, comfort, and sustainability for lasting style.', N'When it comes to summer fashion, few brands capture the essence of timeless elegance like Chanel. The iconic fashion house, known for its classic designs and sophisticated style, never fails to deliver when it comes to summer collections, especially their stunning range of summer dresses. If you''re on the lookout for a perfect blend of luxury, comfort, and effortless chic, a Chanel summer dress is a wardrobe essential.
The Signature Aesthetic
Chanel''s summer dresses encapsulate a perfect balance between modernity and classic French elegance. Designed with light, breathable fabrics like cotton, linen, and silk, these dresses are tailored to keep you feeling cool and looking polished even during the hottest days. Often featuring clean lines, subtle prints, and delicate embellishments, Chanel dresses stand out not for their flashiness but for their understated luxury.
Versatile Designs for Every Occasion
Whether you''re planning a beach getaway, a garden party, or a casual day out in the city, Chanel offers summer dresses suitable for any occasion. Their designs range from flowy sundresses to structured A-line silhouettes that flatter every body type. For those who love minimalism, Chanel’s classic white dresses or elegant monochrome styles are a go-to, while their floral prints and pastel shades evoke a carefree, feminine vibe.
Quality Craftsmanship
What sets Chanel apart from other fashion houses is their commitment to craftsmanship. Every Chanel summer dress is a product of meticulous attention to detail, using only the finest materials and skilled artistry. The intricate embroidery, lace trims, and hand-sewn details make each piece not just a dress, but a work of art that stands the test of time.
Styling Your Chanel Summer Dress
A Chanel summer dress speaks volumes on its own, but with the right accessories, you can elevate your look to new heights. Pair your dress with classic Chanel accessories such as a quilted handbag, chic ballet flats, or their famous two-tone slingback heels. For a more laid-back summer vibe, you can opt for espadrilles or flat sandals and add a wide-brimmed hat to protect yourself from the sun while looking effortlessly stylish.
Sustainable Luxury
In recent years, Chanel has also embraced more sustainable practices in fashion. Their commitment to creating timeless pieces means that a Chanel summer dress is an investment in sustainable fashion. Rather than following fast fashion trends, these dresses are designed to be worn and cherished for years, reducing the need for frequent purchases and contributing to a more mindful approach to consumption.
Iconic Chanel Influencers and Celebrities
From Keira Knightley to Margot Robbie, many style icons have been spotted in Chanel summer dresses at various events, showing just how versatile and universally flattering these designs are. Chanel has maintained its status as a favorite among celebrities, influencers, and fashion enthusiasts alike because their dresses exude a level of sophistication that is unmatched.
Conclusion
A Chanel summer dress is more than just a seasonal garment; it is a symbol of elegance, luxury, and timeless fashion. Investing in one means adding a piece of high fashion to your wardrobe that you can rely on for many summers to come. Whether you''re a fan of Chanel’s minimalist designs or their more playful patterns, the craftsmanship and attention to detail in every piece make each dress a true fashion treasure.

', N'img/product/Chanel-Summer-Dress.png', CAST(N'2024-11-23T14:23:40.930' AS DateTime))
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (3, 1, 3, N'Gucci Slim Shirt', N'img/product/Gucci-Slim-Shirt.png', CAST(120 AS Decimal(38, 0)), 30, N'Slim fit cotton shirt', N'Gucci shirt made from 100% organic cotton.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (4, 2, 4, N'Louis Vuitton Jeans', N'img/product/Louis-Vuitton-Jeans.png', CAST(30 AS Decimal(38, 0)), 12, N'Classic fit jeans', N'Louis Vuitton jeans with a sleek design.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (5, 10, 6, N'Chanel Summer Dress', N'img/product/Chanel-Summer-Dress.png', CAST(10 AS Decimal(38, 0)), 20, N'Light and elegant dress', N'Chanel summer dress, perfect for warm weather.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (6, 11, 5, N'Dior Jacket', N'img/product/Dior-Jacket.png', CAST(30 AS Decimal(38, 0)), 10, N'Stylish and warm jacket', N'Dior jacket with a modern design.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (7, 12, 3, N'Versace T-Shirt', N'img/product/Versace-T-Shirt.png', CAST(2000 AS Decimal(38, 0)), 20, N'Bold graphic t-shirt', N'Versace t-shirt with iconic designs.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (8, 13, 8, N'Burberry Sweater', N'img/product/Burberry-Sweater.png', CAST(1200 AS Decimal(38, 0)), 20, N'Cozy wool sweater', N'Burberry sweater made from soft wool.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (9, 1, 3, N'Gucci Casual Shirt', N'img/product/Gucci-Casual-Shirt.png', CAST(2500 AS Decimal(38, 0)), 12, N'Comfortable casual shirt', N'Gucci casual shirt made with premium fabric.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (10, 2, 3, N'Louis Vuitton Chinos', N'img/product/Louis-Vuitton-Chinos.png', CAST(380 AS Decimal(38, 0)), 12, N'Stylish chinos', N'Louis Vuitton chinos with a modern cut.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (11, 10, 6, N'Chanel Evening Dress', N'img/product/Chanel-Evening-Dress.png', CAST(250 AS Decimal(38, 0)), 12, N'Elegant evening dress', N'Chanel evening dress for special occasions.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (12, 11, 5, N'Dior Leather Jacket', N'img/product/Dior-Leather-Jacket.png', CAST(230 AS Decimal(38, 0)), 11, N'High-quality leather jacket', N'Dior leather jacket with a sleek finish.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (13, 12, 3, N'Versace Polo Shirt', N'img/product/Versace-Polo-Shirt.png', CAST(123 AS Decimal(38, 0)), 14, N'Stylish polo shirt', N'Versace polo shirt with classic designs.', 1)
INSERT [dbo].[Product] ([Id], [BrandId], [CategoryId], [Name], [ImageURL], [Price], [Quantity], [ShortDescription], [Description], [Status]) VALUES (14, 13, 5, N'Burberry Cardigan', N'img/product/Burberry-Cardigan.png', CAST(45 AS Decimal(38, 0)), 23, N'Warm cardigan', N'Burberry cardigan made with high-quality material.', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Sale')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Fullname], [Password], [Email], [RoleId], [Status]) VALUES (1, N'Admin', N'123', N'admin@gmail.com', 1, 1)
INSERT [dbo].[User] ([Id], [Fullname], [Password], [Email], [RoleId], [Status]) VALUES (2, N'User', N'123', N'user@gmail.com', 3, 1)
INSERT [dbo].[User] ([Id], [Fullname], [Password], [Email], [RoleId], [Status]) VALUES (7, N'minh', N'123', N'minh@gmail.com', 3, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_FeedbackDate]  DEFAULT (getdate()) FOR [FeedbackDate]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_PublishDate]  DEFAULT (getdate()) FOR [PublishDate]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_ProductDetail] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_ProductDetail]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment] FOREIGN KEY([RepplyCommentId])
REFERENCES [dbo].[Comment] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_ProductDetail] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_ProductDetail]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Feedback] FOREIGN KEY([ReplyFeedbackId])
REFERENCES [dbo].[Feedback] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Feedback]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Order]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Feedback] FOREIGN KEY([FeedbackId])
REFERENCES [dbo].[Feedback] ([Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Feedback]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Voucher] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Voucher]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductDetail] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductDetail]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Category]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductDetail_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductDetail_Category]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
