.class public final enum Lcom/fsck/k9/activity/misc/Attachment$LoadingState;
.super Ljava/lang/Enum;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/misc/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/misc/Attachment$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

.field public static final enum CANCELLED:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

.field public static final enum COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

.field public static final enum METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

.field public static final enum URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    const-string v1, "URI_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 60
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 61
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 62
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->CANCELLED:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->CANCELLED:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->$VALUES:[Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment$LoadingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/misc/Attachment$LoadingState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->$VALUES:[Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    return-object v0
.end method
