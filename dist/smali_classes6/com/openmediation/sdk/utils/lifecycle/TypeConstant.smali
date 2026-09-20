.class public Lcom/openmediation/sdk/utils/lifecycle/TypeConstant;
.super Ljava/lang/Object;


# static fields
.field static final ADS_ACT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmFkdGJpZC5zZGs="

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcy5hZHM="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmZhY2Vib29rLmFkcw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLnVuaXR5M2Quc2VydmljZXMuYWRz"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLnZ1bmdsZQ=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmFkY29sb255"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmFwcGxvdmlu"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLm1vcHVi"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLnRhcGpveQ=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmNoYXJ0Ym9vc3Q="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmJ5dGVkYW5jZS5zZGs="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmlyb25zb3VyY2Uuc2RrLmNvbnRyb2xsZXI="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLm15LnRhcmdldA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLm1icmlkZ2UubXNkay4="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmNoYXJ0Ym9vc3RfaGVsaXVtLnNkaw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLnFxLmUuYWRz"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLnNpZ21vYi53aW5kYWQ="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmt3YWQuc2RrLmFwaS5wcm94eQ=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "aW8ucHJlc2FnZS5pbnRlcnN0aXRpYWwudWk="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "bmV0LnB1Ym5hdGl2ZS5saXRlLnNkaw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmNyb3NzcHJvbW90aW9uLnNkay4="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "YWRtb3N0LnNkay4="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "YWRtb3N0LmFkc2VydmVyLg=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmZsYXRhZHMuc2RrLnVp"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmlubW9iaS5hZHMucmVuZGVyaW5n"

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmh1YXdlaS5vcGVuYWxsaWFuY2UuYWQuYWN0aXZpdHk="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/openmediation/sdk/utils/lifecycle/TypeConstant;->ADS_ACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
