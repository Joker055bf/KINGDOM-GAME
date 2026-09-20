.class public interface abstract Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface;
.super Ljava/lang/Object;
.source "IEmulatorCheckAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;,
        Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.t4f.sdk.device.IEmulatorCheckAidlInterface"


# virtual methods
.method public abstract isEmulator()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
