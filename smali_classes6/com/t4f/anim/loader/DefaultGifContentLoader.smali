.class public Lcom/t4f/anim/loader/DefaultGifContentLoader;
.super Ljava/lang/Object;
.source "DefaultGifContentLoader.java"

# interfaces
.implements Lcom/t4f/anim/loader/GifContentLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultGifContentLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/t4f/anim/source/MediaSource;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 22
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context or source is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
