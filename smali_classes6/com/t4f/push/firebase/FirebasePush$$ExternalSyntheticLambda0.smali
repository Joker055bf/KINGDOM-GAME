.class public final synthetic Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/push/firebase/FirebasePush;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/push/firebase/FirebasePush;

    iput-object p2, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/push/firebase/FirebasePush;

    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    invoke-virtual {v0, v1, p1}, Lcom/t4f/push/firebase/FirebasePush;->lambda$requestToken$1$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
