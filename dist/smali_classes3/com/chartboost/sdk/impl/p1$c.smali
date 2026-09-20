.class public Lcom/chartboost/sdk/impl/p1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/k2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/p1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->H()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/p1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/chartboost/sdk/impl/p1;->h:J

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/p1;->O:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/p1;->x:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lcom/chartboost/sdk/impl/p1;->x:I

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1$c;->a:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->A()V

    return-void
.end method
