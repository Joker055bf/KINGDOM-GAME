.class public final Lcom/chartboost/sdk/impl/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/g3;",
        "",
        "",
        "c",
        "g",
        "f",
        "e",
        "h",
        "d",
        "b",
        "i",
        "",
        "a",
        "Lcom/chartboost/sdk/impl/f3;",
        "view",
        "Lcom/chartboost/sdk/impl/l1;",
        "uiManager",
        "<init>",
        "(Lcom/chartboost/sdk/impl/f3;Lcom/chartboost/sdk/impl/l1;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/f3;

.field public final b:Lcom/chartboost/sdk/impl/l1;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/f3;Lcom/chartboost/sdk/impl/l1;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    const-string p1, "g3"

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->h()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBackPressed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->a(Lcom/chartboost/sdk/view/CBImpressionActivity;)V

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/f3;->b()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/impl/g6;

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/impl/g6;

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/f3;->b()V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->c(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->a()Lcom/chartboost/sdk/view/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->d(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 4

    const-string v0, "TAG"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The activity passed down is not hardware accelerated, so Chartboost cannot show ads"

    .line 5
    invoke-static {v1, v2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g3;->a:Lcom/chartboost/sdk/impl/f3;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/f3;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g3;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onAttachedToWindow: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
