.class public final synthetic Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;

    iput-object p2, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iput-object p3, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;

    iget-object v1, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iget-object v2, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->lambda$requestServerSideAccess$2$com-t4f-sdkauth-googleplaygames-GooglePlayGames(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
