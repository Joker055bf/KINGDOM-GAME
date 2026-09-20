.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/t4f/sdk/core/OnAndroidNativeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$2:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;->f$2:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->lambda$reveal$3$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
