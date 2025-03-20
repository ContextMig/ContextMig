.class public final enum Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;
.super Ljava/lang/Enum;
.source "UnreadWidgetProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/UnreadWidgetProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

.field public static final enum ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

.field public static final enum FOLDER:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

.field public static final enum SEARCH_ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    const-string v1, "SEARCH_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->SEARCH_ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    .line 135
    new-instance v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    const-string v1, "ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    .line 136
    new-instance v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->FOLDER:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    sget-object v1, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->SEARCH_ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->FOLDER:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->$VALUES:[Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->$VALUES:[Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    invoke-virtual {v0}, [Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    return-object v0
.end method
