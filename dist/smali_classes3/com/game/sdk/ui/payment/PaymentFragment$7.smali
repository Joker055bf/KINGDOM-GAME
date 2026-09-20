.class Lcom/game/sdk/ui/payment/PaymentFragment$7;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/IWebViewClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$7;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
