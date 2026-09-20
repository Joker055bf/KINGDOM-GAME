.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;

    iput-object p3, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;

    iget-object v2, p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->lambda$showWithUnavailable$3(Landroid/app/Activity;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
