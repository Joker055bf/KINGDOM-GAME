.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v0, v1, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->lambda$loadAchievements$6$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/AnnotatedData;)V

    return-void
.end method
