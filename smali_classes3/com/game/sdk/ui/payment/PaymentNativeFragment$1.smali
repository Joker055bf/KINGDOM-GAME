.class Lcom/game/sdk/ui/payment/PaymentNativeFragment$1;
.super Ljava/lang/Object;
.source "PaymentNativeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-virtual {p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->dismiss()V

    return-void
.end method
