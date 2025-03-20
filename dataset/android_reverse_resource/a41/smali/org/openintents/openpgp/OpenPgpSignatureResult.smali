.class public Lorg/openintents/openpgp/OpenPgpSignatureResult;
.super Ljava/lang/Object;
.source "OpenPgpSignatureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_VERSION:I = 0x3

.field public static final RESULT_INVALID_INSECURE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_INVALID_KEY_EXPIRED:I = 0x5

.field public static final RESULT_INVALID_KEY_INSECURE:I = 0x6

.field public static final RESULT_INVALID_KEY_REVOKED:I = 0x4

.field public static final RESULT_INVALID_SIGNATURE:I = 0x0

.field public static final RESULT_KEY_MISSING:I = 0x2

.field public static final RESULT_NO_SIGNATURE:I = -0x1

.field public static final RESULT_VALID_CONFIRMED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_VALID_KEY_CONFIRMED:I = 0x1

.field public static final RESULT_VALID_KEY_UNCONFIRMED:I = 0x3

.field public static final RESULT_VALID_UNCONFIRMED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final confirmedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyId:J

.field private final primaryUserId:Ljava/lang/String;

.field private final result:I

.field private final senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field private final userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "signatureStatus"    # I
    .param p2, "signatureUserId"    # Ljava/lang/String;
    .param p3, "keyId"    # J
    .param p7, "senderStatusResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .param p8, "signatureOnly"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p5, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "confirmedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 72
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    .line 73
    iput-wide p3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    .line 74
    iput-object p5, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    .line 75
    iput-object p6, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    .line 76
    iput-object p7, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    .line 86
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    .line 91
    :goto_0
    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    .line 92
    sget-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-static {p1, v0, v1}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->readEnumWithNullAndFallback(Landroid/os/Parcel;[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    .line 99
    :goto_1
    return-void

    .line 89
    :cond_0
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 97
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ILorg/openintents/openpgp/OpenPgpSignatureResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/openintents/openpgp/OpenPgpSignatureResult$1;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static createWithInvalidSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 205
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v1 .. v9}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public static createWithKeyMissing(J)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 10
    .param p0, "keyId"    # J

    .prologue
    const/4 v3, 0x0

    .line 201
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v2, 0x2

    move-wide v4, p0

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v1 .. v9}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public static createWithNoSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v1 .. v9}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public static createWithValidSignature(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 10
    .param p0, "signatureStatus"    # I
    .param p1, "primaryUserId"    # Ljava/lang/String;
    .param p2, "keyId"    # J
    .param p6, "senderStatusResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
            ")",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult;"
        }
    .end annotation

    .prologue
    .line 188
    .local p4, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "confirmedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can only use this method for valid types of signatures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    const/4 v9, 0x0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method private static readEnumWithNullAndFallback(Landroid/os/Parcel;[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/os/Parcel;",
            "[TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "enumValues":[Ljava/lang/Enum;, "[TT;"
    .local p2, "fallback":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "valueOrdinal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 217
    const/4 p2, 0x0

    .line 222
    .end local p2    # "fallback":Ljava/lang/Enum;, "TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 219
    .restart local p2    # "fallback":Ljava/lang/Enum;, "TT;"
    :cond_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 222
    aget-object p2, p1, v0

    goto :goto_0
.end method

.method private static writeEnumWithNull(Landroid/os/Parcel;Ljava/lang/Enum;)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_0

    .line 227
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getConfirmedUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    return-wide v0
.end method

.method public getPrimaryUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    return v0
.end method

.method public getSenderStatusResult()Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v0
.end method

.method public getUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nresult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nprimaryUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nuserIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nkeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    invoke-static {v2, v3}, Lorg/openintents/openpgp/util/OpenPgpUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public withSignatureOnlyFlag(Z)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 10
    .param p1, "signatureOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    iget v2, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    iget-wide v4, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    iget-object v6, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 211
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(ILjava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/lang/Boolean;)V

    .line 210
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 134
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 138
    .local v1, "sizePosition":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 141
    .local v2, "startPosition":I
    iget v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->primaryUserId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-wide v4, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->keyId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->userIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-static {p1, v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->writeEnumWithNull(Landroid/os/Parcel;Ljava/lang/Enum;)V

    .line 150
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->confirmedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 153
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void
.end method
