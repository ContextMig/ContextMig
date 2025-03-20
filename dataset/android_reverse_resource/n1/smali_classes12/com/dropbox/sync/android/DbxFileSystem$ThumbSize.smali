.class public final enum Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;
.super Ljava/lang/Enum;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

.field public static final enum L:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

.field public static final enum M:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

.field public static final enum S:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

.field public static final enum XL:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

.field public static final enum XS:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    const-string v1, "XS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XS:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    .line 128
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    const-string v1, "S"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->S:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    .line 133
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    const-string v1, "M"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->M:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    .line 138
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    const-string v1, "L"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->L:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    .line 143
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    const-string v1, "XL"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XL:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XS:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->S:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->M:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->L:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XL:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    return-object v0
.end method
