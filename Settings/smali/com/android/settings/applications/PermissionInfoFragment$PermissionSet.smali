.class Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;
.super Ljava/lang/Object;
.source "PermissionInfoFragment.java"


# instance fields
.field private KF:Ljava/util/Map;

.field private KG:Ljava/util/Map;

.field private KH:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KG:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KH:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KG:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KH:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public kT()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public kU()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public kV()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/applications/PermissionInfoFragment$PermissionSet;->KH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
