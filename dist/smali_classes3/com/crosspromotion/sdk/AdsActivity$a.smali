.class Lcom/crosspromotion/sdk/AdsActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/AdsActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/AdsActivity;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/AdsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/AdsActivity$a;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/crosspromotion/sdk/AdsActivity$a;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/AdsActivity;->onBackPressed()V

    return-void
.end method
