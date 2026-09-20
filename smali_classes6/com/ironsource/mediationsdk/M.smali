.class final Lcom/ironsource/mediationsdk/M;
.super Lcom/ironsource/mediationsdk/s;

# interfaces
.implements Lcom/ironsource/environment/j;
.implements Lcom/ironsource/mediationsdk/D;
.implements Lcom/ironsource/mediationsdk/O;
.implements Lcom/ironsource/mediationsdk/ai;
.implements Lcom/ironsource/mediationsdk/c;
.implements Lcom/ironsource/mediationsdk/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/M$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:J

.field private C:Ljava/lang/Boolean;

.field private D:Lcom/ironsource/mediationsdk/B;

.field private final E:J

.field d:J

.field final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/N;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/ironsource/mediationsdk/M$a;

.field final g:Ljava/lang/Object;

.field final h:Z

.field private i:Lcom/ironsource/mediationsdk/P;

.field private j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ironsource/mediationsdk/c/b;

.field private m:Lcom/ironsource/mediationsdk/j;

.field private n:Lcom/ironsource/mediationsdk/h;

.field private o:Lorg/json/JSONObject;

.field private p:Lcom/ironsource/mediationsdk/ah;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcom/ironsource/environment/NetworkStateReceiver;

.field private u:Z

.field private v:Lcom/ironsource/mediationsdk/utils/n;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/r;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/r;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/s;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, ""

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->r:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/ironsource/mediationsdk/M;->u:Z

    const/4 v11, 0x1

    iput v11, v8, Lcom/ironsource/mediationsdk/M;->w:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v8, Lcom/ironsource/mediationsdk/M;->g:Ljava/lang/Object;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    new-array v1, v11, [[Ljava/lang/Object;

    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "ext1"

    aput-object v3, v2, v10

    const-string v3, "LWS_RV"

    aput-object v3, v2, v11

    aput-object v2, v1, v10

    invoke-static {v1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const v2, 0x13da0

    invoke-virtual {v8, v2, v1}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;)V

    sget-object v1, Lcom/ironsource/mediationsdk/M$a;->a:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v8, v1}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ironsource/mediationsdk/M;->C:Ljava/lang/Boolean;

    iget v2, v9, Lcom/ironsource/mediationsdk/model/r;->c:I

    iput v2, v8, Lcom/ironsource/mediationsdk/M;->y:I

    iget-boolean v2, v9, Lcom/ironsource/mediationsdk/model/r;->d:Z

    iput-boolean v2, v8, Lcom/ironsource/mediationsdk/M;->z:Z

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    iput-object v1, v8, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    iget-object v15, v9, Lcom/ironsource/mediationsdk/model/r;->n:Lcom/ironsource/mediationsdk/utils/c;

    iput-boolean v10, v8, Lcom/ironsource/mediationsdk/M;->A:Z

    new-instance v0, Lcom/ironsource/mediationsdk/P;

    iget-object v1, v9, Lcom/ironsource/mediationsdk/model/r;->n:Lcom/ironsource/mediationsdk/utils/c;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/utils/c;->p:Ljava/util/ArrayList;

    iget-object v2, v9, Lcom/ironsource/mediationsdk/model/r;->n:Lcom/ironsource/mediationsdk/utils/c;

    iget v2, v2, Lcom/ironsource/mediationsdk/utils/c;->h:I

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/P;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/M;->B:J

    iget v0, v15, Lcom/ironsource/mediationsdk/utils/c;->f:I

    if-lez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    iput-boolean v0, v8, Lcom/ironsource/mediationsdk/M;->q:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ironsource/mediationsdk/h;

    const-string v1, "rewardedVideo"

    invoke-direct {v0, v1, v15, v8}, Lcom/ironsource/mediationsdk/h;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/c;Lcom/ironsource/mediationsdk/g;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->n:Lcom/ironsource/mediationsdk/h;

    :cond_1
    new-instance v0, Lcom/ironsource/mediationsdk/ah;

    invoke-direct {v0, v15, v8}, Lcom/ironsource/mediationsdk/ah;-><init>(Lcom/ironsource/mediationsdk/utils/c;Lcom/ironsource/mediationsdk/ai;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v10, v10}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v5, Lcom/ironsource/mediationsdk/N;

    iget v4, v9, Lcom/ironsource/mediationsdk/model/r;->e:I

    iget v2, v8, Lcom/ironsource/mediationsdk/M;->w:I

    move-object v0, v5

    move-object/from16 v1, p3

    move/from16 v17, v2

    move-object/from16 v2, p4

    move/from16 v18, v4

    move-object/from16 v4, p0

    move-object/from16 p1, v5

    move/from16 v5, v18

    move-object v10, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/N;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/O;ILcom/ironsource/mediationsdk/AbstractAdapter;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v10, v7

    :goto_2
    move-object v7, v10

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    move-object v10, v7

    new-instance v0, Lcom/ironsource/mediationsdk/j;

    iget v1, v15, Lcom/ironsource/mediationsdk/utils/c;->g:I

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/j;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->m:Lcom/ironsource/mediationsdk/j;

    new-instance v0, Lcom/ironsource/mediationsdk/utils/n;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/n;-><init>(Ljava/util/List;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v12

    new-array v2, v11, [[Ljava/lang/Object;

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "duration"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v11

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const v1, 0x13da1

    invoke-virtual {v8, v1, v0}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;)V

    new-instance v0, Lcom/ironsource/mediationsdk/B;

    iget v1, v9, Lcom/ironsource/mediationsdk/model/r;->i:I

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/B;-><init>(ILcom/ironsource/mediationsdk/c;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/M;->D:Lcom/ironsource/mediationsdk/B;

    iget-boolean v0, v9, Lcom/ironsource/mediationsdk/model/r;->k:Z

    iput-boolean v0, v8, Lcom/ironsource/mediationsdk/M;->h:Z

    iget-wide v0, v9, Lcom/ironsource/mediationsdk/model/r;->l:J

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/M;->E:J

    iget-wide v0, v15, Lcom/ironsource/mediationsdk/utils/c;->j:J

    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(J)V

    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/c/b;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/N;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "2"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/util/Map;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object p4, p4, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object p4, p4, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    const-string v1, "auctionId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p4, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, "genericParams"

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "placement"

    iget-object p4, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/ironsource/mediationsdk/a/h;->d()Lcom/ironsource/mediationsdk/a/h;

    iget p3, p0, Lcom/ironsource/mediationsdk/M;->s:I

    iget-object p4, p0, Lcom/ironsource/mediationsdk/M;->r:Ljava/lang/String;

    invoke-static {v0, p3, p4}, Lcom/ironsource/mediationsdk/a/h;->a(Ljava/util/Map;ILjava/lang/String;)V

    :cond_3
    iget p3, p0, Lcom/ironsource/mediationsdk/M;->w:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "sessionDepth"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LWSProgRvManager: RV sendMediationEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p3, p4, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    new-instance p2, Lcom/ironsource/mediationsdk/a/c;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/h;->d()Lcom/ironsource/mediationsdk/a/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/a/h;->b(Lcom/ironsource/mediationsdk/a/c;)V

    return-void
.end method

.method private a(J)V
    .locals 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/n;->a()Z

    move-result v0

    const-string v1, "reason"

    const-string v2, "errorCode"

    const v3, 0x13c69

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    const-string p1, "all smashes are capped"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    new-array p2, v6, [[Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const v2, 0x13881

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v0, p2, v5

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    aput-object v0, p2, v4

    invoke-static {p2}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->i()V

    return-void

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->m:Lcom/ironsource/mediationsdk/j;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/j;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/M$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/M$1;-><init>(Lcom/ironsource/mediationsdk/M;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_2
    const-string p1, "auction fallback flow starting"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->f()V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "loadSmashes -  waterfall is empty"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    new-array p1, v6, [[Ljava/lang/Object;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v2, p2, v5

    const v0, 0x13884

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v5

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v1, p2, v5

    const-string v0, "waterfall is empty"

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->i()V

    return-void

    :cond_3
    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/M;->b(I)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->h()V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/M;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/M;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/M;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/N;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/utils/n;->b(Lcom/ironsource/mediationsdk/utils/n$a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/P;->b(Lcom/ironsource/mediationsdk/N;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/M;->h:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Lcom/ironsource/mediationsdk/bidding/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/ironsource/mediationsdk/bidding/a;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/ironsource/mediationsdk/N;->getBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    new-array v3, v2, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "reason"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Missing bidding data"

    aput-object v5, v4, v2

    aput-object v4, v3, v6

    const v2, 0x13c91

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/N;->b(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LWSProgRvManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LWSProgRvManager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/ironsource/mediationsdk/c/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v9, v14}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/mediationsdk/N;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    iget-object v2, v1, Lcom/ironsource/mediationsdk/N;->d:Lcom/ironsource/mediationsdk/model/a;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v15, Lcom/ironsource/mediationsdk/N;

    iget v4, v9, Lcom/ironsource/mediationsdk/M;->w:I

    iget v7, v9, Lcom/ironsource/mediationsdk/M;->s:I

    iget-object v8, v9, Lcom/ironsource/mediationsdk/M;->r:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/ironsource/mediationsdk/N;-><init>(Lcom/ironsource/mediationsdk/N;Lcom/ironsource/mediationsdk/O;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    iput-boolean v13, v15, Lcom/ironsource/mediationsdk/ac;->e:Z

    invoke-virtual {v10, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/j$a;->a:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/ironsource/mediationsdk/P;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/P;->b()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-array v0, v13, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "waterfalls hold too many with size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/P;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const v3, 0x13da6

    invoke-direct {v9, v3, v0}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateWaterfall() - next waterfall is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Updated waterfall is empty"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    :cond_4
    new-array v0, v13, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "ext1"

    aput-object v3, v1, v2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x51f

    invoke-direct {v9, v1, v0}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [[Ljava/lang/Object;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "errorCode"

    aput-object p3, p2, v3

    const/16 p3, 0x3ed

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    aput-object p2, p1, v3

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/16 p2, 0x515

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    const-string p1, "makeAuction() failed - No candidates available for auctioning"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->i()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "makeAuction() - request waterfall is: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/M;->b(I)V

    const/16 v0, 0x514

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/M;->b(I)V

    new-array v0, v2, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v1, v3

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    const/16 v0, 0x51e

    invoke-virtual {p0, v0, p3}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->n:Lcom/ironsource/mediationsdk/h;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->m:Lcom/ironsource/mediationsdk/j;

    iget v6, p0, Lcom/ironsource/mediationsdk/M;->w:I

    iget-object v7, p0, Lcom/ironsource/mediationsdk/M;->b:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/ironsource/mediationsdk/h;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/j;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method private a(ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->C:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_3

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/M;->C:Ljava/lang/Boolean;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/mediationsdk/M;->B:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ironsource/mediationsdk/M;->B:J

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v3, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/16 v1, 0x457

    goto :goto_0

    :cond_2
    const/16 v1, 0x458

    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v1, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/ae;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x3eb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x516

    if-eq p0, v0, :cond_1

    const/16 v0, 0x515

    if-eq p0, v0, :cond_1

    const/16 v0, 0x517

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private b(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/ironsource/mediationsdk/M;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 6

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/M;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ironsource/mediationsdk/bidding/b;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/bidding/b;-><init>()V

    new-instance v2, Lcom/ironsource/mediationsdk/M$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/ironsource/mediationsdk/M$3;-><init>(Lcom/ironsource/mediationsdk/M;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/16 p1, 0x528

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/M;->b(I)V

    iget-wide v3, p0, Lcom/ironsource/mediationsdk/M;->E:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/bidding/b;->a(Ljava/util/List;Lcom/ironsource/mediationsdk/bidding/b$a;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LWSProgRvManager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private c(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 p1, 0x459

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private f()V
    .locals 4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->g()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fallback_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1, v2}, Lcom/ironsource/mediationsdk/M;->a(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/N;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/n;->b(Lcom/ironsource/mediationsdk/utils/n$a;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/P;->b(Lcom/ironsource/mediationsdk/N;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/c/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private g(Lcom/ironsource/mediationsdk/N;)V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/c/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/N;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/N;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "loadSmashes -  waterfall is empty"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [[Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v1

    const v4, 0x13884

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    aput-object v3, v2, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v0, v1

    const-string v1, "waterfall is empty"

    aput-object v1, v0, v5

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const v1, 0x13c69

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->i()V

    return-void

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/M$a;->d:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/ironsource/mediationsdk/M;->y:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/N;

    iget-boolean v3, v2, Lcom/ironsource/mediationsdk/ac;->e:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/M;->z:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Advanced Loading: Starting to load bidder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". No other instances will be loaded at the same time."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/M;->g(Lcom/ironsource/mediationsdk/N;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/M;->g(Lcom/ironsource/mediationsdk/N;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private i()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/M$a;->c:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ah;->d()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auction failed | moving to fallback waterfall (error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RV: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    iput p3, p0, Lcom/ironsource/mediationsdk/M;->s:I

    iput-object p4, p0, Lcom/ironsource/mediationsdk/M;->r:Ljava/lang/String;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->f()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "duration"

    const-string v0, "errorCode"

    const/16 v1, 0x515

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    new-array p2, v3, [[Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    aput-object p3, p2, v4

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p4, p1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v2

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    new-array p3, p3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    aput-object v5, p3, v4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p1, v4

    aput-object p2, p1, v2

    aput-object p1, p3, v2

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p4, p1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object p1, p3, v3

    invoke-static {p3}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->h()V

    return-void
.end method

.method a(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 4

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LWSProgRvManager Should Track Network State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :try_start_0
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/M;->u:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/M;->t:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_0

    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/j;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/M;->t:Lcom/ironsource/environment/NetworkStateReceiver;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/M;->t:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/M;->t:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/M;->t:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got an error from receiver with message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Lcom/ironsource/mediationsdk/M$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/N;)V
    .locals 12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadSuccess mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->b:Lcom/ironsource/mediationsdk/M$a;

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/ironsource/mediationsdk/j$a;->c:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->d:Lcom/ironsource/mediationsdk/M$a;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/M;->d:J

    sub-long/2addr v1, v6

    new-array v6, v5, [[Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v5

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->D:Lcom/ironsource/mediationsdk/B;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/ironsource/mediationsdk/B;->a(J)V

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/M;->q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/ironsource/mediationsdk/c/b;

    if-eqz v11, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v1, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v11, v3}, Lcom/ironsource/mediationsdk/c/b;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->l:Lcom/ironsource/mediationsdk/c/b;

    invoke-static {v11, v1, v2}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/c/b;ILcom/ironsource/mediationsdk/c/b;)V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/M;->n:Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/M;->l:Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual/range {v6 .. v11}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/c/b;Lcom/ironsource/mediationsdk/c/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "onLoadSuccess winner instance "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " missing from waterfall. auctionId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and the current id is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->b(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [[Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v2, v3

    const/16 v6, 0x3f2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, p1, v3

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loaded missing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/ironsource/mediationsdk/M$a;->d:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, p1, v5

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v2, v3

    aput-object v1, v2, v5

    aput-object v2, p1, v4

    invoke-static {p1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const v1, 0x13da5

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, v5, p1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadSuccess was invoked with auctionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the current id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    new-array v1, v4, [[Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLoadSuccess wrong auction ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    const v2, 0x13da3

    invoke-virtual {p1, v2, v1}, Lcom/ironsource/mediationsdk/N;->b(I[[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/ironsource/mediationsdk/N;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "onRewardedVideoAdRewarded"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/N;)V
    .locals 6

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v1, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/c/b;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v1, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x459

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/M;->c(ILjava/util/Map;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v3, p2, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/mediationsdk/j$a;->d:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object p2, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ah;->c()V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->g:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x459

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "showRewardedVideo error: empty default placement"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fd

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v9, v8, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    aput-object v7, v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1, v4, v3}, Lcom/ironsource/mediationsdk/M;->a(ILjava/util/Map;ZZ)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showRewardedVideo("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v5, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v5, 0x44c

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/M;->c(I)V

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    if-eqz v5, :cond_1

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fe

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v9, v8, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    aput-object v7, v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/M;->c(ILjava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v6, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    if-eq v5, v6, :cond_2

    const-string p1, "showRewardedVideo error: show called while no ads are available"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3ff

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v9, v8, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    aput-object v7, v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/M;->c(ILjava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "showRewardedVideo error: placement "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " is capped"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x20c

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v9, v8, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    aput-object v7, v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/M;->c(ILjava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/mediationsdk/N;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/N;->a(Z)V

    sget-object v3, Lcom/ironsource/mediationsdk/M$a;->c:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->o()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->o()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/N;->a(Z)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    const-string p1, "showRewardedVideo(): No ads to show"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v3

    const-string v4, "Rewarded Video"

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v6, v5, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "errorCode"

    const/16 v5, 0x1fd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "reason"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ext1"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/M;->c(ILjava/util/Map;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ah;->c()V

    monitor-exit v0

    return-void

    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_b

    const-string v0, "showVideo()"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/utils/n;->a(Lcom/ironsource/mediationsdk/utils/n$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->v:Lcom/ironsource/mediationsdk/utils/n;

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/utils/n;->b(Lcom/ironsource/mediationsdk/utils/n$a;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->b_()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rewarded video is now session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/M;->c(I)V

    :cond_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->D:Lcom/ironsource/mediationsdk/B;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/B;->a()V

    invoke-virtual {v6, p1}, Lcom/ironsource/mediationsdk/N;->a(Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/c/b;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/c/b;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "makeAuction(): success"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/M;->l:Lcom/ironsource/mediationsdk/c/b;

    iput p6, p0, Lcom/ironsource/mediationsdk/M;->s:I

    iput-object p4, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    const-string p3, ""

    iput-object p3, p0, Lcom/ironsource/mediationsdk/M;->r:Ljava/lang/String;

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, p4, [[Ljava/lang/Object;

    new-array v1, p4, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    aput-object p9, v1, p6

    aput-object v1, p3, v0

    new-array p9, p4, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, p9, v0

    aput-object p10, p9, p6

    aput-object p9, p3, p6

    invoke-static {p3}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    const p9, 0x157c2

    invoke-direct {p0, p9, p3}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    :cond_0
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/M;->a(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/M;->a:Lcom/ironsource/mediationsdk/utils/a;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p3, p5}, Lcom/ironsource/mediationsdk/utils/a;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-array p1, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "auctionId"

    aput-object p4, p3, v0

    aput-object p2, p3, p6

    aput-object p3, p1, v0

    invoke-static {p1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/16 p2, 0x517

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->i()V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/ironsource/mediationsdk/M;->o:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/M;->a(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-array p1, p6, [[Ljava/lang/Object;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p2, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p6

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const/16 p2, 0x516

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/M;->h()V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network Availability Changed To: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->C:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/M;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move v3, v1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/N;)V
    .locals 10

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadError mState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v3, Lcom/ironsource/mediationsdk/M$a;->b:Lcom/ironsource/mediationsdk/M$a;

    if-ne v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/ironsource/mediationsdk/j$a;->b:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v3, Lcom/ironsource/mediationsdk/M$a;->d:Lcom/ironsource/mediationsdk/M$a;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v3, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    if-eq v2, v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    move v6, v3

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/mediationsdk/N;

    iget-boolean v8, v7, Lcom/ironsource/mediationsdk/ac;->e:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/M;->z:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Advanced Loading: Starting to load bidder "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". No other instances will be loaded at the same time."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    const-string p1, "a non bidder is being loaded"

    goto :goto_2

    :cond_5
    const-string p1, "a non bidder was already loaded successfully"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Advanced Loading: Won\'t start loading bidder "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/M;->z:Z

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->g()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/ironsource/mediationsdk/M;->y:I

    if-ge v7, v8, :cond_b

    goto :goto_6

    :cond_7
    iget-object v8, v7, Lcom/ironsource/mediationsdk/N;->a:Lcom/ironsource/mediationsdk/N$a;

    sget-object v9, Lcom/ironsource/mediationsdk/N$a;->b:Lcom/ironsource/mediationsdk/N$a;

    if-eq v8, v9, :cond_9

    iget-object v8, v7, Lcom/ironsource/mediationsdk/N;->a:Lcom/ironsource/mediationsdk/N$a;

    sget-object v9, Lcom/ironsource/mediationsdk/N$a;->d:Lcom/ironsource/mediationsdk/N$a;

    if-ne v8, v9, :cond_8

    goto :goto_4

    :cond_8
    move v8, v5

    goto :goto_5

    :cond_9
    :goto_4
    move v8, v4

    :goto_5
    if-eqz v8, :cond_a

    :goto_6
    move v3, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/N;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v4

    goto/16 :goto_0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    if-nez v6, :cond_d

    if-nez v3, :cond_d

    const-string p1, "onLoadError(): No other available smashes"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    if-nez p1, :cond_c

    const/4 p1, 0x0

    invoke-direct {p0, v5, p1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_c
    sget-object p1, Lcom/ironsource/mediationsdk/M$a;->c:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ah;->d()V

    :cond_d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/N;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/M;->g(Lcom/ironsource/mediationsdk/N;)V

    goto :goto_8

    :cond_e
    return-void

    :cond_f
    :goto_9
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onLoadError was invoked with auctionId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and the current id is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [[Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v3, v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v3, v2, v5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "loadError wrong auction ID "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    aput-object v0, v2, v4

    const v0, 0x13da3

    invoke-virtual {p1, v0, v2}, Lcom/ironsource/mediationsdk/N;->b(I[[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lcom/ironsource/mediationsdk/N;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "onRewardedVideoAdClicked"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/ae;->b(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public final c(Lcom/ironsource/mediationsdk/N;)V
    .locals 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/N;)V

    iget v0, p0, Lcom/ironsource/mediationsdk/M;->w:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ironsource/mediationsdk/M;->w:I

    const-string v0, "onRewardedVideoAdOpened"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->q:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v3, v1, Lcom/ironsource/mediationsdk/P;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/c/b;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->i()I

    move-result v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/M;->l:Lcom/ironsource/mediationsdk/c/b;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/c/b;ILcom/ironsource/mediationsdk/c/b;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/j$a;->e:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->x:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/c/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRewardedVideoAdOpened showing instance "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " missing from waterfall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/M;->b(Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    const/16 v6, 0x3f3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v5, v3, v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Showing missing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v5, v3, v1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const v1, 0x13da5

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/M;->b(ILjava/util/Map;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ae;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->p:Lcom/ironsource/mediationsdk/ah;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ah;->a()V

    return-void
.end method

.method public final c()Z
    .locals 3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/N;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/N;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final c_()V
    .locals 6

    sget-object v0, Lcom/ironsource/mediationsdk/M$a;->c:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x421

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v4

    const-string v2, "loaded ads are expired"

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/ironsource/environment/a$1;->a([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(J)V

    return-void
.end method

.method public final d(Lcom/ironsource/mediationsdk/N;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdClosed, mediation state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/M$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/N;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/P;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ae;->b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/M;->A:Z

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/P;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/N;

    iget-object v5, v4, Lcom/ironsource/mediationsdk/N;->a:Lcom/ironsource/mediationsdk/N$a;

    sget-object v6, Lcom/ironsource/mediationsdk/N$a;->e:Lcom/ironsource/mediationsdk/N$a;

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/N;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "otherRVAvailable = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "true|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, "false"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    aput-object v4, v1, v0

    const/16 v2, 0x4b3

    invoke-virtual {p1, v2, v1}, Lcom/ironsource/mediationsdk/N;->a(I[[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/P;->c:Lcom/ironsource/mediationsdk/N;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->i:Lcom/ironsource/mediationsdk/P;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/N;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->e:Lcom/ironsource/mediationsdk/M$a;

    if-eq p1, v2, :cond_5

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(ZLjava/util/Map;)V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadTriggered: RV load was triggered in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/M;->f:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/M;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/M;->a(J)V

    return-void
.end method

.method public final e(Lcom/ironsource/mediationsdk/N;)V
    .locals 1

    const-string v0, "onRewardedVideoAdStarted"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ae;->b()V

    return-void
.end method

.method public final f(Lcom/ironsource/mediationsdk/N;)V
    .locals 1

    const-string v0, "onRewardedVideoAdEnded"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/N;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/ae;->a()Lcom/ironsource/mediationsdk/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ae;->c()V

    return-void
.end method
