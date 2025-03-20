.class public final enum Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;
.super Ljava/lang/Enum;
.source "AdvancedNodeTraversor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

.field public static final enum ENDED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

.field public static final enum ROOT_REMOVED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

.field public static final enum STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ENDED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    .line 55
    new-instance v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    .line 59
    new-instance v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    const-string v1, "ROOT_REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ROOT_REMOVED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    sget-object v1, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ENDED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ROOT_REMOVED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->$VALUES:[Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->$VALUES:[Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    invoke-virtual {v0}, [Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    return-object v0
.end method
