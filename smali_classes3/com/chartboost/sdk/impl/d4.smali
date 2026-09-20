.class public final Lcom/chartboost/sdk/impl/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J3\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0016J;\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0002J;\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0002J \u0010\u000b\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0014H\u0002J\u0010\u0010\u000b\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/d4;",
        "Lcom/chartboost/sdk/impl/g;",
        "Lcom/chartboost/sdk/impl/q3;",
        "params",
        "Lkotlin/Function1;",
        "Lcom/chartboost/sdk/impl/r3;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "callback",
        "a",
        "Lcom/chartboost/sdk/impl/h3;",
        "impressionAdType",
        "loaderParams",
        "Lcom/chartboost/sdk/impl/k;",
        "openRTBAdUnit",
        "Lcom/chartboost/sdk/impl/o2;",
        "downloader",
        "openRTB",
        "Lcom/chartboost/sdk/impl/l0;",
        "",
        "Lcom/chartboost/sdk/impl/z3;",
        "openRTBAdUnitParser",
        "<init>",
        "(Lcom/chartboost/sdk/impl/h3;Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/z3;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/h3;

.field public final b:Lcom/chartboost/sdk/impl/o2;

.field public final c:Lcom/chartboost/sdk/impl/z3;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/h3;Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/z3;)V
    .locals 1

    const-string v0, "impressionAdType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openRTBAdUnitParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/d4;->a:Lcom/chartboost/sdk/impl/h3;

    .line 2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/d4;->b:Lcom/chartboost/sdk/impl/o2;

    .line 3
    iput-object p3, p0, Lcom/chartboost/sdk/impl/d4;->c:Lcom/chartboost/sdk/impl/z3;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/d4;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "$callback"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$loaderParams"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$openRTBAdUnit"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 95
    new-instance v1, Lcom/chartboost/sdk/impl/r3;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v3, v1

    move-object/from16 v5, p2

    .line 97
    invoke-direct/range {v3 .. v12}, Lcom/chartboost/sdk/impl/r3;-><init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/impl/i2;

    .line 109
    sget-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 110
    iget-object v1, v1, Lcom/chartboost/sdk/impl/d4;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cache_asset_download_error"

    .line 111
    invoke-direct {v2, v6, v4, v1, v5}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 120
    new-instance v1, Lcom/chartboost/sdk/impl/r3;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v8

    .line 122
    new-instance v10, Lcom/chartboost/sdk/internal/Model/CBError;

    .line 123
    sget-object v2, Lcom/chartboost/sdk/internal/Model/CBError$b;->c:Lcom/chartboost/sdk/internal/Model/CBError$b;

    const-string v3, "Error parsing response"

    .line 124
    invoke-direct {v10, v2, v3}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x1a

    const/16 v16, 0x0

    move-object v7, v1

    .line 125
    invoke-direct/range {v7 .. v16}, Lcom/chartboost/sdk/impl/r3;-><init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/l0;)V
    .locals 6

    .line 127
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->d()Ljava/util/Map;

    move-result-object v2

    .line 128
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 130
    sget-object v1, Lcom/chartboost/sdk/impl/h4;->c:Lcom/chartboost/sdk/impl/h4;

    .line 134
    iget-object p2, p0, Lcom/chartboost/sdk/impl/d4;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v4, p3

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/o2;->a(Lcom/chartboost/sdk/impl/h4;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/l0;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/h3;Lkotlin/jvm/functions/Function1;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/q3;",
            "Lcom/chartboost/sdk/impl/h3;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/chartboost/sdk/impl/r3;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/chartboost/sdk/impl/d4;->a(Lcom/chartboost/sdk/impl/q3;)Z

    move-result v0

    const-string v3, "Error parsing response"

    const-string v4, "cache_bid_response_parsing_error"

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/chartboost/sdk/impl/i2;

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid bid response"

    .line 27
    invoke-direct {v0, v4, v7, v5, v6}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 35
    new-instance v0, Lcom/chartboost/sdk/impl/r3;

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v9

    .line 37
    new-instance v11, Lcom/chartboost/sdk/internal/Model/CBError;

    .line 38
    sget-object v4, Lcom/chartboost/sdk/internal/Model/CBError$b;->d:Lcom/chartboost/sdk/internal/Model/CBError$b;

    .line 39
    invoke-direct {v11, v4, v3}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move-object v8, v0

    .line 40
    invoke-direct/range {v8 .. v17}, Lcom/chartboost/sdk/impl/r3;-><init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h0;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 55
    :goto_0
    iget-object v0, v1, Lcom/chartboost/sdk/impl/d4;->c:Lcom/chartboost/sdk/impl/z3;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p2

    :try_start_1
    invoke-virtual {v0, v6, v5}, Lcom/chartboost/sdk/impl/z3;->a(Lcom/chartboost/sdk/impl/h3;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/k;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, p1

    .line 74
    invoke-virtual {v1, v5, v0, v2}, Lcom/chartboost/sdk/impl/d4;->a(Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/k;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catch_0
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 75
    :goto_1
    new-instance v7, Lcom/chartboost/sdk/impl/i2;

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-direct {v7, v4, v0, v6, v8}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v7}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 86
    new-instance v0, Lcom/chartboost/sdk/impl/r3;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v10

    .line 88
    new-instance v12, Lcom/chartboost/sdk/internal/Model/CBError;

    .line 89
    sget-object v4, Lcom/chartboost/sdk/internal/Model/CBError$b;->c:Lcom/chartboost/sdk/internal/Model/CBError$b;

    .line 90
    invoke-direct {v12, v4, v3}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x1a

    const/16 v18, 0x0

    move-object v9, v0

    .line 91
    invoke-direct/range {v9 .. v18}, Lcom/chartboost/sdk/impl/r3;-><init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/k;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/q3;",
            "Lcom/chartboost/sdk/impl/k;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/chartboost/sdk/impl/r3;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d4;->b:Lcom/chartboost/sdk/impl/o2;

    .line 94
    new-instance v1, Lcom/chartboost/sdk/impl/d4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/chartboost/sdk/impl/d4$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/d4;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/chartboost/sdk/impl/d4;->a(Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/l0;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/q3;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/q3;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/chartboost/sdk/impl/r3;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d4;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p0, p1, v0, p2}, Lcom/chartboost/sdk/impl/d4;->a(Lcom/chartboost/sdk/impl/q3;Lcom/chartboost/sdk/impl/h3;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/q3;)Z
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/q3;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v2, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
