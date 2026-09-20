.class public Lcom/t4f/push/firebase/TGSFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "TGSFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 15
    invoke-static {}, Lcom/t4f/push/firebase/FirebasePush;->getInstance()Lcom/t4f/push/firebase/FirebasePush;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4f/push/firebase/FirebasePush;->notifyMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z

    return-void
.end method
