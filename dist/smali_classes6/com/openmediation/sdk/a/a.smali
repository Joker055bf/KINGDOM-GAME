.class public Lcom/openmediation/sdk/a/a;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static b:Ljava/lang/String; = "AdMarketView"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/openmediation/sdk/a/a;->a:Ljava/lang/String;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p3, v0}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    new-instance p2, Lcom/openmediation/sdk/a/a$a;

    invoke-direct {p2, p0}, Lcom/openmediation/sdk/a/a$a;-><init>(Lcom/openmediation/sdk/a/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/a;->a:Ljava/lang/String;

    return-object p0
.end method
