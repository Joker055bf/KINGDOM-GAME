.class public final Lcom/crosspromotion/sdk/nativead/NativeAd;
.super Ljava/lang/Object;


# instance fields
.field private mNativeAd:Lcom/openmediation/sdk/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/openmediation/sdk/a/h;

    invoke-direct {p1, p2}, Lcom/openmediation/sdk/a/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/NativeAd;->mNativeAd:Lcom/openmediation/sdk/a/h;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/NativeAd;->mNativeAd:Lcom/openmediation/sdk/a/h;

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/h;->f()V

    return-void
.end method

.method public loadAdWithPayload(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/NativeAd;->mNativeAd:Lcom/openmediation/sdk/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/crosspromotion/sdk/core/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public registerNativeAdView(Lcom/openmediation/sdk/nativead/NativeAdView;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/NativeAd;->mNativeAd:Lcom/openmediation/sdk/a/h;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/h;->b(Lcom/openmediation/sdk/nativead/NativeAdView;)V

    return-void
.end method

.method public setAdListener(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/NativeAd;->mNativeAd:Lcom/openmediation/sdk/a/h;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/h;->a(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V

    return-void
.end method
