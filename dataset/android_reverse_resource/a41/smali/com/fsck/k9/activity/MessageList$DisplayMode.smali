.class final enum Lcom/fsck/k9/activity/MessageList$DisplayMode;
.super Ljava/lang/Enum;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/MessageList$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/MessageList$DisplayMode;

.field public static final enum MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

.field public static final enum MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

.field public static final enum SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    const-string v1, "MESSAGE_LIST"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageList$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 149
    new-instance v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    const-string v1, "MESSAGE_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/MessageList$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 150
    new-instance v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    const-string v1, "SPLIT_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/MessageList$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->$VALUES:[Lcom/fsck/k9/activity/MessageList$DisplayMode;

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
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    const-class v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/MessageList$DisplayMode;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->$VALUES:[Lcom/fsck/k9/activity/MessageList$DisplayMode;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/MessageList$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/MessageList$DisplayMode;

    return-object v0
.end method
