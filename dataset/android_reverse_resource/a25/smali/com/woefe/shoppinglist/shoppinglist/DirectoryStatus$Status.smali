.class public final enum Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;
.super Ljava/lang/Enum;
.source "DirectoryStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

.field public static final enum CANNOT_WRITE:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

.field public static final enum IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

.field public static final enum NOT_A_DIRECTORY:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    const-string v1, "IS_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    const-string v1, "NOT_A_DIRECTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->NOT_A_DIRECTORY:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    const-string v1, "CANNOT_WRITE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->CANNOT_WRITE:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    sget-object v1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->NOT_A_DIRECTORY:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->CANNOT_WRITE:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->$VALUES:[Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;
    .locals 1

    .line 34
    const-class v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    return-object p0
.end method

.method public static values()[Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;
    .locals 1

    .line 34
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->$VALUES:[Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-virtual {v0}, [Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    return-object v0
.end method
