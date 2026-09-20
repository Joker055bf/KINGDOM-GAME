.class public Lcom/t4f/sdkpay/paypal/UrlInterrupter;
.super Ljava/lang/Object;
.source "UrlInterrupter.java"

# interfaces
.implements Landroid/webkit/WebResourceRequest;


# instance fields
.field private mRequest:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirect()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/UrlInterrupter;->mRequest:Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
