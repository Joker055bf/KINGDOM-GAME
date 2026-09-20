.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    invoke-virtual {v0, v1, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->lambda$load$1$com-t4f-sdkgplay-gamesservices-GooglePlayGameStats(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/Exception;)V

    return-void
.end method
