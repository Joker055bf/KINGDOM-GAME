.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/flexionmobile/fdk/ResultHandler;

.field public final synthetic f$2:Landroid/util/AndroidException;


# direct methods
.method public synthetic constructor <init>(JLcom/flexionmobile/fdk/ResultHandler;Landroid/util/AndroidException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$0:J

    iput-object p3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p4, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$2:Landroid/util/AndroidException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$0:J

    iget-object v2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;->f$2:Landroid/util/AndroidException;

    invoke-static {v0, v1, v2, v3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$null$14(JLcom/flexionmobile/fdk/ResultHandler;Landroid/util/AndroidException;)V

    return-void
.end method
