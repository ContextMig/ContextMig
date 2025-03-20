.class final enum Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
.super Ljava/lang/Enum;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

.field public static final enum ALLOW_FULL_DROPBOX:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

.field public static final enum PARTIAL_METADATA:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

.field public static final enum UNRESTRICTED_ACCESS:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 115
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    const-string v1, "ALLOW_FULL_DROPBOX"

    invoke-direct {v0, v1, v5, v3}, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->ALLOW_FULL_DROPBOX:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    .line 120
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    const-string v1, "UNRESTRICTED_ACCESS"

    invoke-direct {v0, v1, v3, v4}, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->UNRESTRICTED_ACCESS:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    .line 126
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    const-string v1, "PARTIAL_METADATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->PARTIAL_METADATA:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    sget-object v1, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->ALLOW_FULL_DROPBOX:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->UNRESTRICTED_ACCESS:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->PARTIAL_METADATA:Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->$VALUES:[Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->mValue:I

    .line 131
    return-void
.end method

.method public static flagsToInt(Ljava/util/EnumSet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;>;"
    const/4 v2, 0x0

    .line 134
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    .line 135
    .local v0, "f":Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
    iget v3, v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->mValue:I

    or-int/2addr v2, v3

    .line 136
    goto :goto_0

    .line 137
    .end local v0    # "f":Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
    :cond_0
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->$VALUES:[Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    return-object v0
.end method
