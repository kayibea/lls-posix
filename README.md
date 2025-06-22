# LLS Posix Annotations

**LLS annotations for Lua POSIX modules**  
This project provides static type annotations for POSIX-related Lua modules to improve compatibility with Lua Language Servers (LLS), enabling better autocompletion, type checking, and development ergonomics.  

## 🚧 Roadmap

### ✅ Module Annotation Coverage

#### Core Modules
- [ ] `posix`
- [x] `posix.ctype`
- [x] `posix.errno`
- [x] `posix.fcntl`
- [x] `posix.fnmatch`
- [x] `posix.glob`
- [x] `posix.libgen`
- [x] `posix.poll`
- [x] `posix.stdio`
- [x] `posix.stdlib`
- [ ] `posix.time`
- [x] `posix.signal`
- [x] `posix.unistd`
- [ ] `posix.utime`
- [x] `posix.dirent`
- [x] `posix.grp`
- [x] `posix.pwd`
- [ ] `posix.termio`
- [ ] `posix.syslog`
- [x] `posix.sched`
- [x] `posix.sys.msg`
- [x] `posix.sys.resource`
- [x] `posix.sys.socket`
- [x] `posix.sys.stat`
- [x] `posix.sys.statvfs`
- [ ] `posix.sys.time`
- [ ] `posix.sys.times`
- [ ] `posix.sys.utsname`
- [ ] `posix.sys.wait`

---

### 📝 Documentation Roadmap

Only type annotations are currently provided. Documentation will be added once core modules are implemented.

#### Function-Level Docstrings
- [ ] `posix.signal`
- [ ] `posix.unistd`
- [ ] Other modules (incrementally)
