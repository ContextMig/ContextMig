.class public final enum Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;
.super Ljava/lang/Enum;
.source "InsertableHtmlContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/quote/InsertableHtmlContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsertionLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

.field public static final enum AFTER_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

.field public static final enum BEFORE_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    const-string v1, "BEFORE_QUOTE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    new-instance v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    const-string v1, "AFTER_QUOTE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->AFTER_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    sget-object v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->AFTER_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->$VALUES:[Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->$VALUES:[Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v0}, [Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    return-object v0
.end method
