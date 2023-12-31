# Portfolio App Full Stack Docker

This is a docker full-stack package for my portfolio application.


---

**Front-End Source Code**: https://github.com/ilgarabdullazade/nuxt3-my-portfolio </br></br>
**Back-End Source Code**: https://github.com/cmdtorch/portfolio_api

---

## Deployment

### Clone repository
```bash
$ git clone https://github.com/cmdtorch/portfolio-fullstack-docker
```

### Run build.sh file 
You need to fill in all fields for the project build with your data:
```bash
$ sh build.sh
$ ...
```

### Build and Run docker

Create docker network `web`:
```bash
$ docker network create web
```

Build and run project:
```bash
$ docker compose up --build
```
