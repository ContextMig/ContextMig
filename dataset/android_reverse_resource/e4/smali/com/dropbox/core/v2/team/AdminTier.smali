.class public final enum Lcom/dropbox/core/v2/team/AdminTier;
.super Ljava/lang/Enum;
.source "AdminTier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/AdminTier$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/AdminTier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/AdminTier;

.field public static final enum MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

.field public static final enum SUPPORT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

.field public static final enum TEAM_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

.field public static final enum USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/team/AdminTier;

    const-string/jumbo v1, "TEAM_ADMIN"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/AdminTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier;->TEAM_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/team/AdminTier;

    const-string/jumbo v1, "USER_MANAGEMENT_ADMIN"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/AdminTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier;->USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/team/AdminTier;

    const-string/jumbo v1, "SUPPORT_ADMIN"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/AdminTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier;->SUPPORT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/team/AdminTier;

    const-string/jumbo v1, "MEMBER_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/AdminTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/team/AdminTier;

    sget-object v1, Lcom/dropbox/core/v2/team/AdminTier;->TEAM_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/AdminTier;->USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/AdminTier;->SUPPORT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier;->$VALUES:[Lcom/dropbox/core/v2/team/AdminTier;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/team/AdminTier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->$VALUES:[Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/AdminTier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method
