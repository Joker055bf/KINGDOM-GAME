.class Lcom/openmediation/sdk/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/b;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/bean/AdBean;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/b$a;->a:Lcom/crosspromotion/sdk/bean/AdBean;

    iput-object p2, p0, Lcom/openmediation/sdk/a/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/a/b$a;->a:Lcom/crosspromotion/sdk/bean/AdBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/a/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crosspromotion/sdk/utils/PUtils;->saveClInfo(Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V

    return-void
.end method
