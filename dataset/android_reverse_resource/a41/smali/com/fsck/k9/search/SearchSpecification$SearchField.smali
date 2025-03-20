.class public final enum Lcom/fsck/k9/search/SearchSpecification$SearchField;
.super Ljava/lang/Enum;
.source "SearchSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/SearchSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/search/SearchSpecification$SearchField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum ATTACHMENT_COUNT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum BCC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum CC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum DATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum DELETED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum FLAG:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum INTEGRATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum MESSAGE_CONTENTS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum REPLY_TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum SEARCHABLE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public static final enum UID:Lcom/fsck/k9/search/SearchSpecification$SearchField;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "SUBJECT"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 67
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 68
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "UID"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->UID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 69
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "FLAG"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAG:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 70
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "SENDER"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 71
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "TO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 72
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "CC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->CC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 73
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "FOLDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 74
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "BCC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->BCC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 75
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "REPLY_TO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->REPLY_TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 76
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "MESSAGE_CONTENTS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->MESSAGE_CONTENTS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 77
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "ATTACHMENT_COUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ATTACHMENT_COUNT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 78
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "DELETED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DELETED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 79
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "THREAD_ID"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 80
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "ID"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 81
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "INTEGRATE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->INTEGRATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 82
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "READ"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 83
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "FLAGGED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 84
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "DISPLAY_CLASS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 85
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v1, "SEARCHABLE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SEARCHABLE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 65
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->UID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAG:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->CC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->BCC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->REPLY_TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->MESSAGE_CONTENTS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ATTACHMENT_COUNT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DELETED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->INTEGRATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SEARCHABLE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->$VALUES:[Lcom/fsck/k9/search/SearchSpecification$SearchField;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/SearchSpecification$SearchField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/search/SearchSpecification$SearchField;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->$VALUES:[Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v0}, [Lcom/fsck/k9/search/SearchSpecification$SearchField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/search/SearchSpecification$SearchField;

    return-object v0
.end method
