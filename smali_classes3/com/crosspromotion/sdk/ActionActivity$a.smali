.class Lcom/crosspromotion/sdk/ActionActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/ActionActivity;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/ActionActivity;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/ActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$a;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$a;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
