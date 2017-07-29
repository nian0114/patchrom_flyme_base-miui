.class Lcom/android/settings/fr;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field private sY:Landroid/widget/TextView;

.field private sZ:Landroid/widget/TextView;

.field private ta:Landroid/widget/Switch;

.field private tb:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fh;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/settings/fr;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fr;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fr;->tb:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fr;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fr;->ta:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fr;->sY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/fr;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fr;->sY:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/fr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fr;->sZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/fr;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/fr;->sZ:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/android/settings/fr;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fr;->ta:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/fr;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/fr;->tb:Landroid/widget/CheckBox;

    return-object v0
.end method
