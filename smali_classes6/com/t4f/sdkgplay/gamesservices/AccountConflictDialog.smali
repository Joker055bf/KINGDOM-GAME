.class public Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;
.super Ljava/lang/Object;
.source "AccountConflictDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;
    }
.end annotation


# static fields
.field private static sMessageOverride:Ljava/lang/String;

.field private static sNoOverride:Ljava/lang/String;

.field private static sTitleOverride:Ljava/lang/String;

.field private static sYesOverride:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showWithUnavailable$0(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 83
    invoke-static {p0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeResolve(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method static synthetic lambda$showWithUnavailable$1(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 84
    invoke-static {p0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeResolve(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method static synthetic lambda$showWithUnavailable$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Landroid/content/DialogInterface;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "[AccountConflictDialog] Dismissed without choice."

    .line 92
    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 93
    invoke-static {p1, p0}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeUnavailable(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showWithUnavailable$3(Landroid/app/Activity;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 67
    :cond_0
    sget-object v0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sTitleOverride:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Lcom/tgs/plugin/R$string;->tgs_gs_conflict_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    sget-object v1, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sMessageOverride:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    sget v1, Lcom/tgs/plugin/R$string;->tgs_gs_conflict_message:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_1
    sget-object v2, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sYesOverride:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 75
    :cond_3
    sget v2, Lcom/tgs/plugin/R$string;->tgs_gs_conflict_yes:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_2
    sget-object v3, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sNoOverride:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_3

    .line 78
    :cond_4
    sget v3, Lcom/tgs/plugin/R$string;->tgs_gs_conflict_no:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 83
    invoke-virtual {p0, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 84
    invoke-virtual {p0, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;)V

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    :cond_5
    :goto_4
    const-string p0, "[AccountConflictDialog] Activity finishing/destroyed, cannot prompt."

    .line 62
    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 63
    invoke-static {p1, p2}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeUnavailable(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AccountConflictDialog] show failed, cannot prompt. t="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p2}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeUnavailable(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    :goto_5
    return-void
.end method

.method private static safeResolve(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;->onResolved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[AccountConflictDialog] onResolved threw: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static safeUnavailable(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;->onUnavailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[AccountConflictDialog] onUnavailable threw: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    sput-object p0, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sTitleOverride:Ljava/lang/String;

    .line 20
    sput-object p1, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sMessageOverride:Ljava/lang/String;

    .line 21
    sput-object p2, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sYesOverride:Ljava/lang/String;

    .line 22
    sput-object p3, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->sNoOverride:Ljava/lang/String;

    return-void
.end method

.method public static showWithUnavailable(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;)V
    .locals 0

    if-nez p5, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-nez p0, :cond_1

    const-string p0, "[AccountConflictDialog] Activity null, cannot prompt."

    .line 50
    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 51
    invoke-static {p5, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog;->safeUnavailable(Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    .line 54
    :cond_1
    new-instance p2, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p5, p1}, Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/t4f/sdkgplay/gamesservices/AccountConflictDialog$OnConflictResolved;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
