.class public Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HtmlHttpImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlDrawable"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
