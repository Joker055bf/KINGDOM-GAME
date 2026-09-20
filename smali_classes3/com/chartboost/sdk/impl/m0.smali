.class public Lcom/chartboost/sdk/impl/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/l0;

.field public final b:Z

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/l0;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/l0;

    .line 3
    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/m0;->b:Z

    .line 4
    iput p3, p0, Lcom/chartboost/sdk/impl/m0;->c:I

    .line 5
    iput p4, p0, Lcom/chartboost/sdk/impl/m0;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/l0;

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/m0;->b:Z

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/l0;->a(Z)V

    return-void
.end method
