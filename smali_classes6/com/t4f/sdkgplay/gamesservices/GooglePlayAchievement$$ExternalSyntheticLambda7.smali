.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/t4f/sdk/core/OnAndroidNativeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$3:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;->f$3:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->lambda$setSteps$2$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
