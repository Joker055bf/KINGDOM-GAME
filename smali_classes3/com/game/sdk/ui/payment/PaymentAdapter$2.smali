.class Lcom/game/sdk/ui/payment/PaymentAdapter$2;
.super Ljava/lang/Object;
.source "PaymentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentAdapter;->onBindViewHolder(Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentAdapter;

.field final synthetic val$item:Lcom/game/sdk/comon/object/ItemPayObj$Item;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentAdapter;Lcom/game/sdk/comon/object/ItemPayObj$Item;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter$2;->this$0:Lcom/game/sdk/ui/payment/PaymentAdapter;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentAdapter$2;->val$item:Lcom/game/sdk/comon/object/ItemPayObj$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter$2;->this$0:Lcom/game/sdk/ui/payment/PaymentAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentAdapter;->onClickItemPaymentListener:Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter$2;->val$item:Lcom/game/sdk/comon/object/ItemPayObj$Item;

    invoke-interface {v0, p1, v1}, Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;->onClickItem(Landroid/view/View;Lcom/game/sdk/comon/object/ItemPayObj$Item;)V

    return-void
.end method
