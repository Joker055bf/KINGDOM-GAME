.class public Lcom/t4f/utils/AudioRecordManager$AudioRecordRequestPermissionActivity;
.super Landroid/app/Activity;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRecordRequestPermissionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "android.permission.RECORD_AUDIO"

    .line 293
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x92a

    invoke-virtual {p0, p1, v0}, Lcom/t4f/utils/AudioRecordManager$AudioRecordRequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 298
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x92a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 300
    aget-object p2, p2, p1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 301
    aget p2, p3, p1

    .line 303
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$600()Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;

    move-result-object p3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-interface {p3, p1}, Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;->onRequestPermissionsResult(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/t4f/utils/AudioRecordManager$AudioRecordRequestPermissionActivity;->finish()V

    :cond_1
    return-void
.end method
