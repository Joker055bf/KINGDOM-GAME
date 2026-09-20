.class public Lcom/t4f/sdk/device/EmulatorChecker;
.super Ljava/lang/Object;
.source "EmulatorChecker.java"


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final BLUE_STACKS_FILES:[Ljava/lang/String;

.field private static final EMU_CHECK_FAILED:I = -0x1

.field private static final EMU_CHECK_FALSE:I = 0x0

.field private static final EMU_CHECK_TRUE:I = 0x1

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "EmuChecker"

.field private static final X86_FILES:[Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

.field private mContext:Landroid/content/Context;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->GENY_FILES:[Ljava/lang/String;

    const-string v0, "/dev/socket/qemud"

    const-string v1, "/dev/qemu_pipe"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->PIPES:[Ljava/lang/String;

    const-string v1, "ueventd.android_x86.rc"

    const-string v2, "x86.prop"

    const-string v3, "ueventd.ttVM_x86.rc"

    const-string v4, "init.ttVM_x86.rc"

    const-string v5, "fstab.ttVM_x86"

    const-string v6, "fstab.vbox86"

    const-string v7, "init.vbox86.rc"

    const-string v8, "ueventd.vbox86.rc"

    .line 33
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->X86_FILES:[Ljava/lang/String;

    const-string v0, "fstab.andy"

    const-string v1, "ueventd.andy.rc"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->ANDY_FILES:[Ljava/lang/String;

    const-string v0, "init.nox.rc"

    const-string v1, "ueventd.nox.rc"

    const-string v2, "fstab.nox"

    .line 45
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->NOX_FILES:[Ljava/lang/String;

    const-string v0, "/mnt/windows/BstSharedFolder"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->BLUE_STACKS_FILES:[Ljava/lang/String;

    const-string v0, "emu_checker"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mContext:Landroid/content/Context;

    .line 271
    new-instance v0, Lcom/t4f/sdk/device/EmulatorChecker$1;

    invoke-direct {v0, p0}, Lcom/t4f/sdk/device/EmulatorChecker$1;-><init>(Lcom/t4f/sdk/device/EmulatorChecker;)V

    iput-object v0, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->getApp()Landroid/app/Application;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 218
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->getApp2()Landroid/app/Application;

    move-result-object p1

    .line 220
    :cond_1
    iput-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mCallback:Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/t4f/sdk/device/EmulatorChecker;Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mCallback:Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/t4f/sdk/device/EmulatorChecker;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static checkBuildConfig()Z
    .locals 4

    .line 104
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "droid4x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86"

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "goldfish"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "ranchu"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "vbox86"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    .line 113
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 114
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk_x86"

    .line 115
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "vbox86p"

    .line 116
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "emulator"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "simulator"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "unknown"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static checkEmulatorBasic()I
    .locals 3

    const-string v0, "EmuChecker"

    :try_start_0
    const-string v1, "checkEmulatorBasic call."

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->checkBuildConfig()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Basic checkBuildConfig emulator is detected."

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 238
    :cond_0
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->checkEmulatorFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Basic checkEmulatorFiles emulator is detected."

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 243
    :cond_1
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulatorFromCpu()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Basic Emulator is detected from CPU Manufacturer."

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method private static checkEmulatorFiles()Z
    .locals 1

    .line 127
    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->GENY_FILES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->ANDY_FILES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->NOX_FILES:[Ljava/lang/String;

    .line 128
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->X86_FILES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->PIPES:[Ljava/lang/String;

    .line 129
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4f/sdk/device/EmulatorChecker;->BLUE_STACKS_FILES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->checkFiles([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static checkFiles([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 135
    :try_start_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 136
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method static native emulatorCheckByCache()Z
.end method

.method static getApp()Landroid/app/Application;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 191
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 192
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 193
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method static getApp2()Landroid/app/Application;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.AppGlobals"

    .line 202
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInitialApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 203
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 204
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method static isEmulator()Z
    .locals 3

    .line 66
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->checkBuildConfig()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "EmuChecker"

    if-eqz v0, :cond_0

    const-string v0, "checkBuildConfig emulator is detected."

    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 71
    :cond_0
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->checkEmulatorFiles()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "checkEmulatorFiles emulator is detected."

    .line 72
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 76
    :cond_1
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->emulatorCheckByCache()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Emulator is detected (by cache feature)."

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 81
    :cond_2
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulatorQemu()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Qemu emulator is detected."

    .line 82
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_3
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulatorViaBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Emulator is detected from build info."

    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 91
    :cond_4
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulatorFromAbi()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Emulator is detected from ABI."

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 96
    :cond_5
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulatorFromCpu()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Emulator is detected from CPU Manufacturer."

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static isEmulatorFromAbi()Z
    .locals 2

    const-string v0, "ro.product.cpu.abi"

    .line 172
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->propertyGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static isEmulatorFromCpu()Z
    .locals 4

    const-string v0, "cat /proc/cpuinfo"

    const/4 v1, 0x0

    .line 180
    invoke-static {v0, v1}, Lcom/t4f/sdk/device/ShellAdbUtils;->execCommand(Ljava/lang/String;Z)Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, v0, Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 182
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "amd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method static isEmulatorQemu()Z
    .locals 2

    const-string v0, "ro.kernel.qemu"

    .line 148
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->propertyGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isEmulatorViaBuild()Z
    .locals 3

    const-string v0, "ro.product.model"

    .line 153
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->propertyGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "ro.product.manufacturer"

    .line 158
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->propertyGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "ro.product.device"

    .line 163
    invoke-static {v0}, Lcom/t4f/sdk/device/EmulatorChecker;->propertyGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static propertyGetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/t4f/sdk/device/EmulatorChecker;->systemPropertiesNativeGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static native systemPropertiesNativeGet(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public checkEmulatorAsync()V
    .locals 4

    .line 260
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/t4f/sdk/device/EmulatorCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    iget-object v1, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "EmuChecker"

    const-string v1, "checkEmulatorAsync call bindService failed."

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mCallback:Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 266
    invoke-interface {v0, v1}, Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;->onCheckResult(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker;->mCallback:Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    return-void
.end method
