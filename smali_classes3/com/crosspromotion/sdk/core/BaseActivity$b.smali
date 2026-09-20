.class Lcom/crosspromotion/sdk/core/BaseActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/core/BaseActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/core/BaseActivity;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/core/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity$b;->a:Lcom/crosspromotion/sdk/core/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity$b;->a:Lcom/crosspromotion/sdk/core/BaseActivity;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/BaseActivity;->c()V

    return-void
.end method
