.class public final enum Lcom/fsck/k9/activity/MessageCompose$Action;
.super Ljava/lang/Enum;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/MessageCompose$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;


# instance fields
.field private final titleResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1811
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    const-string v1, "COMPOSE"

    const v2, 0x7f070168

    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1812
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    const-string v1, "REPLY"

    const v2, 0x7f07016a

    invoke-direct {v0, v1, v4, v2}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1813
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    const-string v1, "REPLY_ALL"

    const v2, 0x7f07016b

    invoke-direct {v0, v1, v5, v2}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1814
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    const-string v1, "FORWARD"

    const v2, 0x7f070169

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1815
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    const-string v1, "EDIT_DRAFT"

    const v2, 0x7f070168

    invoke-direct {v0, v1, v7, v2}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1810
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->$VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "titleResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1820
    iput p3, p0, Lcom/fsck/k9/activity/MessageCompose$Action;->titleResource:I

    .line 1821
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageCompose$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1810
    const-class v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/MessageCompose$Action;
    .locals 1

    .prologue
    .line 1810
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->$VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/MessageCompose$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/MessageCompose$Action;

    return-object v0
.end method


# virtual methods
.method public getTitleResource()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1825
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$Action;->titleResource:I

    return v0
.end method
