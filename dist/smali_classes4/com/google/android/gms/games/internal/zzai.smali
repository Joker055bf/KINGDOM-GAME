.class public abstract Lcom/google/android/gms/games/internal/zzai;
.super Lcom/google/android/gms/internal/games_v2/zzb;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_7

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_6

    const/16 p4, 0x2eeb

    if-eq p1, p4, :cond_5

    const/16 p4, 0x2eec

    if-eq p1, p4, :cond_4

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_3

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_2

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_1

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p1, 0x0

    return p1

    .line 81
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/Contents;

    .line 86
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzai;->zzn(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 88
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 92
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 93
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 94
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 102
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 104
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 105
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 106
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 108
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 109
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzo(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 111
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 112
    sget-object p4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/drive/Contents;

    .line 113
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzai;->zzm(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 121
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 122
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 123
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 126
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 128
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 130
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 132
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 133
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 136
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 138
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 139
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 140
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 141
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 142
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 144
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 145
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 146
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 147
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 148
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 149
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 151
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 152
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 153
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 155
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 156
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 157
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzk(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 1
    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/gms/games/internal/zzai;->zzs(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 8
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 10
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 11
    sget-object p1, Lcom/google/android/gms/games/internal/player/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/player/zze;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 13
    :sswitch_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 15
    :sswitch_5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzai;->zzr(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 21
    :sswitch_7
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;)Z

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 23
    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 25
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 27
    :sswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 29
    :sswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 31
    :sswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 33
    :sswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 36
    :sswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 38
    :sswitch_f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 40
    :sswitch_10
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 42
    :sswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 44
    :sswitch_12
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 46
    :sswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 48
    :sswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 50
    :sswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 52
    :sswitch_16
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 54
    :sswitch_17
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 56
    :sswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 58
    :sswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 60
    :sswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 62
    :sswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 70
    :sswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 71
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 72
    :sswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzq(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 75
    :sswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 76
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 115
    :sswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 116
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzl(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 118
    :sswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 120
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 134
    :sswitch_21
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 135
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 163
    :sswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 164
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 165
    :sswitch_23
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 167
    :sswitch_24
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 168
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 169
    :sswitch_25
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 170
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 171
    :sswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 172
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 173
    :sswitch_27
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 174
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 175
    :sswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;)Z

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 179
    :sswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :sswitch_2a
    sget-object p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 183
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 185
    :sswitch_2b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 187
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 188
    :sswitch_2c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 190
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 191
    :sswitch_2d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 193
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 194
    :sswitch_2e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 196
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 197
    :sswitch_2f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 199
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 200
    :sswitch_30
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 203
    :sswitch_31
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 204
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 205
    :sswitch_32
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 206
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 207
    :sswitch_33
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 208
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 209
    :sswitch_34
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 210
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 211
    :sswitch_35
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 212
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 213
    :sswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 215
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 216
    :sswitch_37
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 217
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 218
    :sswitch_38
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 219
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 220
    :sswitch_39
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 221
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 222
    :sswitch_3a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzai;->zzj()V

    goto/16 :goto_0

    .line 223
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 224
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 225
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 226
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 227
    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 228
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 229
    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 230
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzi(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 232
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 233
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzh(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 235
    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 236
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzg(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 238
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    sget-object p4, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/common/data/DataHolder;

    .line 240
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 241
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzai;->zzf(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 242
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 243
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zze(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 245
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 247
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 248
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzai;->zzd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 250
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 252
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 254
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;)Z

    .line 66
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    sget-object p1, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/video/VideoCapabilities;

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 78
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 79
    :cond_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 80
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 98
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzai;->zzp(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 100
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzai;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 159
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zze(Landroid/os/Parcel;)V

    .line 255
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_3a
        0x1399 -> :sswitch_39
        0x139a -> :sswitch_38
        0x139b -> :sswitch_37
        0x139c -> :sswitch_36
        0x139d -> :sswitch_35
        0x139e -> :sswitch_34
        0x139f -> :sswitch_33
        0x13a0 -> :sswitch_32
        0x13a1 -> :sswitch_31
        0x13a2 -> :sswitch_30
        0x13a3 -> :sswitch_2f
        0x13a4 -> :sswitch_2e
        0x13a5 -> :sswitch_2d
        0x13a6 -> :sswitch_2c
        0x13a7 -> :sswitch_2b
        0x13a8 -> :sswitch_2a
        0x13a9 -> :sswitch_29
        0x13aa -> :sswitch_28
        0x13ab -> :sswitch_27
        0x13ac -> :sswitch_26
        0x13ad -> :sswitch_25
        0x13ae -> :sswitch_24
        0x13af -> :sswitch_23
        0x13b0 -> :sswitch_22
        0x2329 -> :sswitch_21
        0x2af9 -> :sswitch_20
        0x2ee1 -> :sswitch_1f
        0x36b1 -> :sswitch_1e
        0x3a99 -> :sswitch_1d
        0x426a -> :sswitch_1c
        0x4a40 -> :sswitch_1b
        0x4a41 -> :sswitch_1a
        0x4a42 -> :sswitch_19
        0x4e21 -> :sswitch_18
        0x4e22 -> :sswitch_17
        0x4e23 -> :sswitch_16
        0x4e24 -> :sswitch_15
        0x4e25 -> :sswitch_14
        0x4e26 -> :sswitch_13
        0x4e27 -> :sswitch_12
        0x4e28 -> :sswitch_11
        0x4e29 -> :sswitch_10
        0x4e2c -> :sswitch_f
        0x4e33 -> :sswitch_e
        0x4e34 -> :sswitch_d
        0x59d9 -> :sswitch_c
        0x59da -> :sswitch_b
        0x59db -> :sswitch_a
        0x59dc -> :sswitch_9
        0x59dd -> :sswitch_8
        0x5dc2 -> :sswitch_7
        0x61aa -> :sswitch_6
        0x61ab -> :sswitch_5
        0x61ac -> :sswitch_4
        0x61ad -> :sswitch_3
        0x61ae -> :sswitch_2
        0x61af -> :sswitch_1
        0x61b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1f41
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2ee4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2eee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
