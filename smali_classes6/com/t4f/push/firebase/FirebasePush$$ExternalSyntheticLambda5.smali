.class public final synthetic Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda5;->f$0:Lcom/t4f/sdk/core/OnSDKFinish;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda5;->f$0:Lcom/t4f/sdk/core/OnSDKFinish;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/t4f/push/firebase/FirebasePush;->lambda$requestPermission$6(Lcom/t4f/sdk/core/OnSDKFinish;Ljava/lang/Boolean;)V

    return-void
.end method
