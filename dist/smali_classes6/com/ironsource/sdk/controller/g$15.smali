.class final Lcom/ironsource/sdk/controller/g$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/g/d$e;Lcom/ironsource/sdk/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/sdk/controller/g;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v7, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/y;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/y;->c:Lcom/ironsource/sdk/controller/c;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/y;->b:Lcom/ironsource/sdk/service/d;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget-object v4, v0, Lcom/ironsource/sdk/controller/y;->d:Lcom/ironsource/sdk/controller/j;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget v5, v0, Lcom/ironsource/sdk/controller/y;->e:I

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->c(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/y;

    move-result-object v0

    iget-object v6, v0, Lcom/ironsource/sdk/controller/y;->f:Lorg/json/JSONObject;

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Landroid/content/Context;Lcom/ironsource/sdk/controller/c;Lcom/ironsource/sdk/service/d;Lcom/ironsource/sdk/controller/j;ILorg/json/JSONObject;)Lcom/ironsource/sdk/controller/x;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Lcom/ironsource/sdk/controller/m;)Lcom/ironsource/sdk/controller/m;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/m;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/g$15;->a:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Ljava/lang/String;)V

    return-void
.end method
